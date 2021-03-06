.class public Lcom/prime31/TwitterPlugin;
.super Lcom/prime31/TwitterPluginBase;
.source "TwitterPlugin.java"


# static fields
.field private static final apiUploadUrlPrefix:Ljava/lang/String; = "http://api.twitter.com"

.field private static final apiUrlPrefix:Ljava/lang/String; = "https://api.twitter.com"

.field public static final callbackUrlPrefix:Ljava/lang/String; = "twitterplugin"


# instance fields
.field private _accessToken:Lorg/scribe/model/Token;

.field private _requestToken:Lorg/scribe/model/Token;

.field private _service:Lorg/scribe/oauth/OAuthService;

.field private _session:Lcom/prime31/TwitterSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/prime31/TwitterPluginBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/prime31/TwitterPlugin;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/prime31/TwitterPlugin;->continueLoginWithVerifier(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/prime31/TwitterPlugin;)Lorg/scribe/oauth/OAuthService;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_service:Lorg/scribe/oauth/OAuthService;

    return-object v0
.end method

.method static synthetic access$10(Lcom/prime31/TwitterPlugin;Ljava/lang/String;Landroid/os/Bundle;[B)V
    .registers 4

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/prime31/TwitterPlugin;->performMultipartRequestInternal(Ljava/lang/String;Landroid/os/Bundle;[B)V

    return-void
.end method

.method static synthetic access$11(Lcom/prime31/TwitterPlugin;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/prime31/TwitterPlugin;->performRequestInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/prime31/TwitterPlugin;)Lorg/scribe/model/Token;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_requestToken:Lorg/scribe/model/Token;

    return-object v0
.end method

.method static synthetic access$3(Lcom/prime31/TwitterPlugin;Lorg/scribe/model/Token;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    return-void
.end method

.method static synthetic access$4(Lcom/prime31/TwitterPlugin;)Lorg/scribe/model/Token;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    return-object v0
.end method

.method static synthetic access$5(Lcom/prime31/TwitterPlugin;)Lcom/prime31/TwitterSession;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_session:Lcom/prime31/TwitterSession;

    return-object v0
.end method

.method static synthetic access$6(Lcom/prime31/TwitterPlugin;Lcom/prime31/TwitterSession;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/prime31/TwitterPlugin;->_session:Lcom/prime31/TwitterSession;

    return-void
.end method

.method static synthetic access$7(Lcom/prime31/TwitterPlugin;Lorg/scribe/oauth/OAuthService;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/prime31/TwitterPlugin;->_service:Lorg/scribe/oauth/OAuthService;

    return-void
.end method

.method static synthetic access$8(Lcom/prime31/TwitterPlugin;Lorg/scribe/model/Token;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/prime31/TwitterPlugin;->_requestToken:Lorg/scribe/model/Token;

    return-void
.end method

.method static synthetic access$9(Lcom/prime31/TwitterPlugin;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/prime31/TwitterPlugin;->showLoginDialog(Ljava/lang/String;)V

    return-void
.end method

.method private continueLoginWithVerifier(Ljava/lang/String;)V
    .registers 4
    .param p1, "oauthVerifier"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prime31/TwitterPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/prime31/TwitterPlugin$2;-><init>(Lcom/prime31/TwitterPlugin;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method private performMultipartRequestInternal(Ljava/lang/String;Landroid/os/Bundle;[B)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "image"    # [B

    .prologue
    .line 215
    :try_start_0
    new-instance v4, Lorg/scribe/model/OAuthRequest;

    sget-object v6, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://api.twitter.com"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 216
    .local v4, "request":Lorg/scribe/model/OAuthRequest;
    const-string v0, "---------------------------14737809831466499882746641449"

    .line 217
    .local v0, "boundary":Ljava/lang/String;
    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "multipart/form-data; boundary="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/scribe/model/OAuthRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v4, v6, v7}, Lorg/scribe/model/OAuthRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    const-string v6, "Content-Disposition: attachment; name=\"media[]\"; filename=\"screenshot.png\"\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    const-string v6, "Content-Type: application/octet-stream\r\n\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 225
    invoke-virtual {v3, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    const-string v6, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 230
    const-string v6, "Content-Disposition: form-data; name=\"status\"\r\n\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 231
    const-string v6, "status"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    const-string v6, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/scribe/model/OAuthRequest;->addPayload([B)V

    .line 241
    iget-object v6, p0, Lcom/prime31/TwitterPlugin;->_service:Lorg/scribe/oauth/OAuthService;

    iget-object v7, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    invoke-interface {v6, v7, v4}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V

    .line 242
    invoke-virtual {v4}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v5

    .line 244
    .local v5, "response":Lorg/scribe/model/Response;
    const-string v6, "requestSucceeded"

    invoke-virtual {v5}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/prime31/TwitterPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e4} :catch_e5

    .line 251
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "request":Lorg/scribe/model/OAuthRequest;
    .end local v5    # "response":Lorg/scribe/model/Response;
    :goto_e4
    return-void

    .line 246
    :catch_e5
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "message":Ljava/lang/String;
    const-string v6, "requestFailed"

    if-eqz v2, :cond_f2

    .end local v2    # "message":Ljava/lang/String;
    :goto_ee
    invoke-virtual {p0, v6, v2}, Lcom/prime31/TwitterPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .restart local v2    # "message":Ljava/lang/String;
    :cond_f2
    const-string v2, "Error performing request"

    goto :goto_ee
.end method

.method private performRequestInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 175
    :try_start_0
    const-string v7, "get"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5a

    .line 176
    sget-object v6, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    .line 181
    .local v6, "verb":Lorg/scribe/model/Verb;
    :goto_a
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    :cond_21
    new-instance v4, Lorg/scribe/model/OAuthRequest;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://api.twitter.com"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 187
    .local v4, "request":Lorg/scribe/model/OAuthRequest;
    if-eqz p3, :cond_45

    .line 189
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 190
    .local v0, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 198
    .end local v0    # "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_45
    iget-object v7, p0, Lcom/prime31/TwitterPlugin;->_service:Lorg/scribe/oauth/OAuthService;

    iget-object v8, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    invoke-interface {v7, v8, v4}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V

    .line 199
    invoke-virtual {v4}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v5

    .line 201
    .local v5, "response":Lorg/scribe/model/Response;
    const-string v7, "requestSucceeded"

    invoke-virtual {v5}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/prime31/TwitterPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v4    # "request":Lorg/scribe/model/OAuthRequest;
    .end local v5    # "response":Lorg/scribe/model/Response;
    .end local v6    # "verb":Lorg/scribe/model/Verb;
    :goto_59
    return-void

    .line 178
    :cond_5a
    sget-object v6, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    .restart local v6    # "verb":Lorg/scribe/model/Verb;
    goto :goto_a

    .line 190
    .restart local v0    # "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "request":Lorg/scribe/model/OAuthRequest;
    :cond_5d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_3f

    .line 203
    .end local v0    # "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "request":Lorg/scribe/model/OAuthRequest;
    .end local v6    # "verb":Lorg/scribe/model/Verb;
    :catch_6b
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "message":Ljava/lang/String;
    const-string v7, "requestFailed"

    if-eqz v3, :cond_78

    .end local v3    # "message":Ljava/lang/String;
    :goto_74
    invoke-virtual {p0, v7, v3}, Lcom/prime31/TwitterPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .restart local v3    # "message":Ljava/lang/String;
    :cond_78
    const-string v3, "Error performing request"

    goto :goto_74
.end method

.method private showLoginDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/prime31/TwitterPlugin;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49
    const-string v0, "loginSucceeded"

    iget-object v1, p0, Lcom/prime31/TwitterPlugin;->_session:Lcom/prime31/TwitterSession;

    invoke-virtual {v1}, Lcom/prime31/TwitterSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/prime31/TwitterPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_11
    return-void

    .line 53
    :cond_12
    new-instance v0, Lcom/prime31/TwitterPlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/prime31/TwitterPlugin$1;-><init>(Lcom/prime31/TwitterPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/TwitterPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prime31/TwitterPlugin$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/TwitterPlugin$3;-><init>(Lcom/prime31/TwitterPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method public isLoggedIn()Z
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public logout()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_session:Lcom/prime31/TwitterSession;

    invoke-virtual {v0}, Lcom/prime31/TwitterSession;->resetAccessToken()V

    .line 333
    iput-object v1, p0, Lcom/prime31/TwitterPlugin;->_accessToken:Lorg/scribe/model/Token;

    .line 334
    iput-object v1, p0, Lcom/prime31/TwitterPlugin;->_requestToken:Lorg/scribe/model/Token;

    .line 335
    return-void
.end method

.method public performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prime31/TwitterPlugin$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/prime31/TwitterPlugin$6;-><init>(Lcom/prime31/TwitterPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 386
    return-void
.end method

.method public postUpdateWithImage(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "update"    # Ljava/lang/String;
    .param p2, "image"    # [B

    .prologue
    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prime31/TwitterPlugin$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/TwitterPlugin$5;-><init>(Lcom/prime31/TwitterPlugin;Ljava/lang/String;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method

.method public showLoginDialog()V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/prime31/TwitterPlugin;->_service:Lorg/scribe/oauth/OAuthService;

    if-nez v0, :cond_c

    .line 294
    const-string v0, "Prime31"

    const-string v1, "service is null.  We can\'t do anything until init is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_b
    return-void

    .line 298
    :cond_c
    const-string v0, "Prime31"

    const-string v1, "spawning new thread to fetch reqeust token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prime31/TwitterPlugin$4;

    invoke-direct {v1, p0}, Lcom/prime31/TwitterPlugin$4;-><init>(Lcom/prime31/TwitterPlugin;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method
