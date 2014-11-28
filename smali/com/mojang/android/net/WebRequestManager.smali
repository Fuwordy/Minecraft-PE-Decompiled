.class public Lcom/mojang/android/net/WebRequestManager;
.super Ljava/lang/Object;
.source "WebRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/android/net/WebRequestManager$WebRequestData;,
        Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;,
        Lcom/mojang/android/net/WebRequestManager$Status;
    }
.end annotation


# instance fields
.field private _httpClient:Lorg/apache/http/client/HttpClient;

.field private _requestlock:Ljava/lang/Object;

.field private _webRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mojang/android/net/WebRequestManager$WebRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private onRequestCompleteCallback:Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;


# direct methods
.method public constructor <init>(Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;)V
    .locals 1
    .param p1, "onRequestCompleteCallback"    # Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->_httpClient:Lorg/apache/http/client/HttpClient;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/mojang/android/net/WebRequestManager;->onRequestCompleteCallback:Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;

    .line 40
    return-void
.end method

.method private _findWebRequest(I)Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 195
    iget-object v3, p0, Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    .line 197
    .local v1, "r":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    iget v2, v1, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .line 199
    .end local v1    # "r":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    :goto_0
    return-object v1

    .line 198
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    new-instance v2, Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    invoke-direct {v2, p1}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;-><init>(I)V

    sget-object v3, Lcom/mojang/android/net/WebRequestManager$Status;->REQUEST_NOT_FOUND:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {v2, v3}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    move-result-object v1

    goto :goto_0

    .line 198
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private _init()V
    .locals 9

    .prologue
    .line 44
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 45
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 46
    const-string v5, "utf-8"

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 47
    const-string v5, "http.protocol.expect-continue"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 50
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 51
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 56
    const/4 v4, 0x0

    .line 58
    .local v4, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    invoke-static {}, Lcom/mojang/android/net/NoCertSSLSocketFactory;->createDefault()Lcom/mojang/android/net/NoCertSSLSocketFactory;

    move-result-object v4

    .line 59
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 66
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager;->_httpClient:Lorg/apache/http/client/HttpClient;

    .line 67
    .end local v1    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MCPE_ssl"

    const-string v6, "Couldn\'t create SSLSocketFactory"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mojang/android/net/WebRequestManager;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/android/net/WebRequestManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->_httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mojang/android/net/WebRequestManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/android/net/WebRequestManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mojang/android/net/WebRequestManager;)Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/android/net/WebRequestManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager;->onRequestCompleteCallback:Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;

    return-object v0
.end method


# virtual methods
.method public abortWebRequest(I)I
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/mojang/android/net/WebRequestManager;->_findWebRequest(I)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    move-result-object v0

    .line 182
    .local v0, "r":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    iget-object v1, v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    sget-object v2, Lcom/mojang/android/net/WebRequestManager$Status;->REQUEST_NOT_FOUND:Lcom/mojang/android/net/WebRequestManager$Status;

    if-eq v1, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    invoke-virtual {v0}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->abort()V

    .line 186
    iget-object v1, p0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requests left "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->getStatusCode()I

    move-result v1

    return v1

    .line 188
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWebRequestContent(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/mojang/android/net/WebRequestManager;->_findWebRequest(I)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    move-result-object v0

    iget-object v0, v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getWebRequestStatus(I)I
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/mojang/android/net/WebRequestManager;->_findWebRequest(I)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "requestId"    # I
    .param p2, "voidptr"    # J
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "cookieData"    # Ljava/lang/String;
    .param p7, "httpBody"    # Ljava/lang/String;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mojang/android/net/WebRequestManager;->_httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v13, :cond_0

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/mojang/android/net/WebRequestManager;->_init()V

    .line 75
    :cond_0
    const/4 v6, 0x0

    .line 77
    .local v6, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v13, "DELETE"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 78
    new-instance v6, Lorg/apache/http/client/methods/HttpDelete;

    .end local v6    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v6    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    const-string v13, "User-Agent"

    const-string v14, "MCPE/Curl"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 116
    .local v5, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v13, 0x7530

    invoke-static {v5, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 118
    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 121
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 122
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting cookie: ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    const-string v13, "Cookie"

    move-object/from16 v0, p6

    invoke-virtual {v6, v13, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    new-instance v10, Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    move/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-direct {v10, v0, v6, v1, v2}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;-><init>(ILorg/apache/http/client/methods/HttpRequestBase;J)V

    .line 127
    .local v10, "request":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    move-object/from16 v3, p4

    .line 128
    .local v3, "callURI":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;

    monitor-enter v14

    .line 130
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    .line 131
    .local v12, "w":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    iget v13, v12, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    iget v15, v10, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    if-ne v13, v15, :cond_2

    .line 132
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v12    # "w":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    :goto_1
    return-void

    .line 79
    .end local v3    # "callURI":Ljava/lang/String;
    .end local v5    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "request":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    :cond_3
    const-string v13, "PUT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 80
    new-instance v9, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 81
    .local v9, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    const-string v13, ""

    move-object/from16 v0, p7

    if-eq v0, v13, :cond_4

    .line 83
    :try_start_1
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p7

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 84
    .local v11, "se":Lorg/apache/http/entity/StringEntity;
    const-string v13, "application/json"

    invoke-virtual {v11, v13}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v9, v11}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v11    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_4
    :goto_2
    move-object v6, v9

    .line 92
    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 92
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :cond_5
    const-string v13, "GET"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 93
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    .end local v6    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v6    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_0

    .line 94
    :cond_6
    const-string v13, "POST"

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 95
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 96
    .local v8, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, ""

    move-object/from16 v0, p7

    if-eq v0, v13, :cond_7

    .line 98
    :try_start_2
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p7

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v11    # "se":Lorg/apache/http/entity/StringEntity;
    const-string v13, "application/json"

    invoke-virtual {v11, v13}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v8, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .end local v11    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_7
    :goto_3
    move-object v6, v8

    .line 107
    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v4

    .line 103
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 108
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_8
    new-instance v13, Ljava/security/InvalidParameterException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown request method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 135
    .restart local v3    # "callURI":Ljava/lang/String;
    .restart local v5    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "request":Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mojang/android/net/WebRequestManager;->_webRequests:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/mojang/android/net/WebRequestManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/mojang/android/net/WebRequestManager$1;-><init>(Lcom/mojang/android/net/WebRequestManager;Lcom/mojang/android/net/WebRequestManager$WebRequestData;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 136
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13
.end method
