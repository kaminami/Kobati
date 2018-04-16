config
config
	^ '
<configuration>

	<environment>
		<property name="host" value="localhost"/>
		<property name="port" value="5432"/>
		<property name="database" value="test"/>
		<property name="username" value="test"/>
		<property name="password" value="test"/>
		<property name="encoding" value="utf8"/>
	</environment>
	
	<mappers>
<!--
		<mapper resource="ExampleXmlMapper.xml"/>
-->
		<mapper eval="KbExample xmlMapper"/>
	</mappers>
	
</configuration>
'