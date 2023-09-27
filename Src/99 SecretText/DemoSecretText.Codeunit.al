namespace waldo.Demo.Coding;

codeunit 50103 "Demo SecretText"
{
    procedure Send(ContentTxt: SecretText; Credential: SecretText; TargetURI: SecretText)
    var
        request: HttpRequestMessage;
        headers: HttpHeaders;
        Content: HttpContent;
    begin
        request.SetSecretRequestUri(TargetURI);
        //...
        Content.WriteFrom(ContentTxt);
        //...
        Headers.Add('Authorization', SecretText.SecretStrSubstNo('Bearer %1', Credential));
        //...
    end;

    // procedure InvokeSend()
    // begin
    //     Send(SecretText.SecretStrSubstNo(''), SecretText.SecretStrSubstNo('waldo:Waldo1234'), SecretText.SecretStrSubstNo('http://www.waldo.be'));
    // end;
}