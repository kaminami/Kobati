<mapper id="Example-xmlMapper">

	<delete id="deleteAll">
		delete from Author;
		delete from Tag;
		delete from Entry;
	</delete>

	<insert id="insertSampleEntry2Authors">
		INSERT
		INTO
			Entry2Author
			(
				entry_id
				, author_id
			)
		SELECT
			Entry.id as entry_id
			, Author.id as author_id
		FROM
			Entry, Author 
		WHERE
		(
			substr(Entry.title, length(Entry.title) - 0, 1) = substr(Author.name, length(Author.name) - 0, 1)
		)
	</insert>

	<insert id="insertSampleEntry2Tags">
		INSERT
		INTO
			Entry2Tag
			(
				entry_id
				, tag_id
			)
		SELECT
			Entry.id as entry_id
			, Tag.id as tag_id 
		FROM
			Entry, Tag
		WHERE
		(
			substr(Entry.title, length(Entry.title) - 0, 1) = substr(Tag.tag, length(Tag.tag) - 0, 1)
				OR
			substr(Entry.title, length(Entry.title) - 1, 1) = substr(Tag.tag, length(Tag.tag) - 0, 1)
		)
	</insert>

	<insert id="insertEntry" selector="insertEntryTitle:contents:" arguments="title, contents">
		INSERT 
		INTO Entry
		(
			title
			, contents
		)
		VALUES (
			${title}
			, ${contents}
		)
	</insert>

	<insert id="insertAuthor" arguments="name">
		INSERT 
		INTO Author
		(
			name
		)
		VALUES (
			${name}
		)
	</insert>

	<insert id="insertTag" arguments="tag">
		INSERT 
		INTO Tag
		(
			tag
		)
		VALUES (
			${tag}
		)
	</insert>	

	<insert id="insertTag2" arguments="tag">
		INSERT 
		INTO Tag
		(
			tag
		)
		VALUES (
			${tag.tag}
		)

		<selectKey keyProperty="tag.id" order="after">
			select currval('tag_id_seq')
		</selectKey>
	</insert>	

	<insert id="insertEntry" arguments="entry">
		INSERT 
		INTO Entry 
		(
			title
			, contents
		)
		VALUES (
			${entry.title}
			, ${entry.contents}
		)
	</insert>

	<update id="updateEntry" arguments="entry">
		UPDATE
			Entry
		SET
			title = ${entry.title}
			, contents = ${entry.contents}
			, updated = now()
		WHERE
			id = ${entry.id}
	</update>

	<select id="selectAllAuthors" resultType="KbAuthor">
		<![CDATA[
			SELECT 
				id
				, name 
			FROM 
				Author
		]]>
	</select>

	<selectOne id="selectAuthorById" arguments="id" resultType="KbAuthor">
		SELECT 
			id
			, name 
		FROM 
			Author 
		WHERE 
			id = ${id}
	</selectOne>

	<sql id="selectAllTagsSql">
		SELECT 
			id
			, tag 
		FROM 
			Tag
	</sql>

	<select id="selectAllTags" resultType="KbTag">
		<include refid="selectAllTagsSql"/>
	</select>

	<selectOne id="selectTagById" arguments="id" resultType="KbTag">
		<include refid="selectAllTagsSql"/>
		WHERE 
			id = ${id}
	</selectOne>

	<select id="selectAllEntries" resultMap="selectEntryMap">
		SELECT 
			en.id AS entry_id
			, en.title AS entry_title
			, en.contents AS entry_contents
			, en.updated AS entry_updated
			, tag.id AS tag_id
			, tag.tag AS tag_tag
			, au.id AS author_id
			, au.name AS author_name
		FROM
			Entry AS en
				lEFT OUTER JOIN 
			Entry2Tag AS e2t
				ON en.id = e2t.entry_id
					LEFT OUTER JOIN 
				Tag AS tag
					ON tag.id = e2t.tag_id
						JOIN
					Entry2Author as e2a
						ON e2a.entry_id = en.id
							JOIN
						Author as au
							ON au.id = e2a.author_id
		ORDER BY 
			en.id
			, au.id
			, tag.id
	</select>

	<selectOne id="selectEntryById" arguments="id" resultMap="selectEntryMap">
		SELECT 
			en.id AS entry_id
			, en.title AS entry_title
			, en.contents AS entry_contents
			, en.updated AS entry_updated
			, tag.id AS tag_id
			, tag.tag AS tag_tag
			, au.id AS author_id
			, au.name AS author_name
		FROM
			Entry AS en
				lEFT OUTER JOIN 
			Entry2Tag AS e2t
				ON en.id = e2t.entry_id
					LEFT OUTER JOIN 
				Tag AS tag
					ON tag.id = e2t.tag_id
						JOIN
					Entry2Author as e2a
						ON e2a.entry_id = en.id
							JOIN
						Author as au
							ON au.id = e2a.author_id
		WHERE
			en.id = ${id}
		ORDER BY 
			en.id
			, au.id
			, tag.id
	</selectOne>

	<select id="selectAllEntries2" resultMap="selectEntryMap2">
		SELECT 
			en.id AS entry_id
			, en.title AS entry_title
			, en.contents AS entry_contents
			, en.updated AS entry_updated
			, tag.id AS tag_id
			, tag.tag AS tag_tag
			, au.id AS author_id
			, au.name AS author_name
		FROM
			Entry AS en
				lEFT OUTER JOIN 
			Entry2Tag AS e2t
				ON en.id = e2t.entry_id
					LEFT OUTER JOIN 
				Tag AS tag
					ON tag.id = e2t.tag_id
						JOIN
					Entry2Author as e2a
						ON e2a.entry_id = en.id
							JOIN
						Author as au
							ON au.id = e2a.author_id
		ORDER BY 
			en.id
			, au.id
			, tag.id
	</select>

	<resultMap id="selectEntryMap" type="KbEntry">
		<id property="id" column="entry_id" />
		<result property="title" column="entry_title" />
		<result property="contents" column="entry_contents" />
		<result property="updated" column="entry_updated" />
		<association property="author" resultMap="selectAuthorMap" />
		<collection property="tags" resultMap="selectTagMap" />
	</resultMap>

	<resultMap id="selectAuthorMap" type="KbAuthor">
		<id property="id" column="author_id" />
		<result property="name" column="author_name" />
	</resultMap>

	<resultMap id="selectTagMap" type="KbTag">
		<id property="id" column="tag_id" />
		<result property="tag" column="tag_tag" />
	</resultMap>

	<resultMap id="selectEntryMap2" type="KbEntry">
		<id property="id" column="entry_id" />
		<result property="title" column="entry_title" />
		<result property="contents" column="entry_contents" />
		<result property="updated" column="entry_updated" />
		<association property="author" type="KbAuthor">
			<id property="id" column="author_id" />
			<result property="name" column="author_name" />
		</association>
		<collection property="tags" type="Set" ofType="KbTag" >
			<id property="id" column="tag_id" />
			<result property="tag" column="tag_tag" />
		</collection>
	</resultMap>
</mapper>
