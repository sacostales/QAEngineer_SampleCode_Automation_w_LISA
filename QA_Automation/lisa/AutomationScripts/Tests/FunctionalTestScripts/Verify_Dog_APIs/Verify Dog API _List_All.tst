<?xml version="1.0" ?>

<TestCase name="Verify Dog API _List_All" version="5">

<meta>
   <create version="9.5.1" buildNumber="9.5.1.6" author="admin" date="04/17/2017" host="dw765k-VirtualBox" />
   <lastEdited version="9.1.0" buildNumber="9.1.0.399" author="admin" date="10/31/2017" host="DTV-F30653" />
</meta>

<id>343D314BBE8611E7AD6F42D020524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj05LjEuMCAoOS4xLjAuMzk5KSZub2Rlcz0xNzg3NDQ1OTcw</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Request (GET Method) http://api/breeds/list/all" log="Validate All Breeds of Dogs"
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="343D314CBE8611E7AD6F42D020524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Output Log Message" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Accept-Ranges</headerKey>
      <prop>Accept-Ranges</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Access-Control-Allow-Origin</headerKey>
      <prop>Access-Control-Allow-Origin</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Cache-Control</headerKey>
      <prop>Cache-Control</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Connection</headerKey>
      <prop>Connection</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Content-Length</headerKey>
      <prop>Content-Length </prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Content-Type</headerKey>
      <prop>Content-Type</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Date</headerKey>
      <prop>Date</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>Server</headerKey>
      <prop>Server</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>X-Cache</headerKey>
      <prop>X-Cache</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterGetHTTPHeader">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <headerKey>X-Cache-Hits</headerKey>
      <prop>X-Cache-Hits</prop>
      </Filter>

      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.Request (GET Method) http://api/breeds/list/all.rsp</valueToFilterKey>
      <prop>response</prop>
      </Filter>


      <!-- Data Sets -->
<readrec>Add Authorization Header to Request</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Ensure Result Contains Terriers" type="com.ca.lisa.apptest.json.AssertJSONEquals2">
<log>Result is missing a Breed of Terrier</log>
<then>continue (quiet)</then>
<valueToAssertKey></valueToAssertKey>
        <jsonPath>$.message.terrier</jsonPath>
        <expectedValue>[&#10;            &quot;american&quot;,&#10;            &quot;australian&quot;,&#10;            &quot;bedlington&quot;,&#10;            &quot;border&quot;,&#10;            &quot;dandie&quot;,&#10;            &quot;fox&quot;,&#10;            &quot;irish&quot;,&#10;            &quot;kerryblue&quot;,&#10;            &quot;lakeland&quot;,&#10;            &quot;norfolk&quot;,&#10;            &quot;norwich&quot;,&#10;            &quot;patterdale&quot;,&#10;            &quot;scottish&quot;,&#10;            &quot;sealyham&quot;,&#10;            &quot;silky&quot;,&#10;            &quot;tibetan&quot;,&#10;            &quot;toy&quot;,&#10;            &quot;westhighland&quot;,&#10;            &quot;wheaten&quot;,&#10;            &quot;yorkshire&quot;&#10;        ]</expectedValue>
        <ignoreArrayOrder>false</ignoreArrayOrder>
</CheckResult>

<CheckResult assertTrue="false" name="Ensure Result Equals Success" type="com.ca.lisa.apptest.json.AssertJSONEquals2">
<log>Assertion name: Ensure Result Equals Success checks for: false is of type: Ensure Result Equals.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <jsonPath>$.status</jsonPath>
        <expectedValue>success</expectedValue>
        <ignoreArrayOrder>false</ignoreArrayOrder>
</CheckResult>

<url>http://dog.ceo/api/breeds/list/all</url>
<content-type>application/json</content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>continue</onError>
    </Node>


    <Node name="Output Log Message" log=""
          type="com.itko.lisa.test.TestNodeLogger" 
          version="1" 
          uid="343D314DBE8611E7AD6F42D020524153" 
          think="500-1S" 
          useFilters="true" 
          quiet="true" 
          next="Request (GET Method) http://api/breeds/list/all" > 

<log>RESPONSE&#13;&#10;&#13;&#10;Headers:&#13;&#10;{{Accept-Ranges}}&#13;&#10;{{Access-Control-Allow-Origin}}&#13;&#10;{{Cache-Control}}&#13;&#10;{{Connection}}&#13;&#10;{{Content-Type}}&#13;&#10;{{Date}}&#13;&#10;{{Server}}&#13;&#10;{{X-Cache}}&#13;&#10;{{X-Cache-Hits}}&#13;&#10;&#13;&#10;Body:&#13;&#10;{{response}}&#13;&#10;</log>
    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="343D3150BE8611E7AD6F42D020524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="343D314FBE8611E7AD6F42D020524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="343D314EBE8611E7AD6F42D020524153" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <DataSet type="com.itko.lisa.test.DataFile" name="Add Authorization Header to Request" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAACdAANQXV0aG9yaXphdGlvbnQAEXNvbWUtYWNjZXNzLXRva2VudAAqQWRkIEF1dGhvcml6YXRpb24gSGVhZGVyIHRvIFJlcXVlc3RfUm93TnVtdAABMXg=</sample>
    <location>{{LISA_RELATIVE_PROJ_ROOT}}/Data/DataSetFile.txt</location>
    <charset>DEFAULT</charset>
    <delim>,</delim>
    </DataSet>

</TestCase>
