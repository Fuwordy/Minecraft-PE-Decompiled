.class Lcom/mojang/android/net/WebRequestManager$WebRequestData;
.super Ljava/lang/Object;
.source "WebRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/android/net/WebRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebRequestData"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public volatile aborted:Z

.field public content:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field public final requestId:I

.field private response:Lorg/apache/http/HttpResponse;

.field public retryTimeout:I

.field public status:Lcom/mojang/android/net/WebRequestManager$Status;

.field public voidptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    const-class v0, Lcom/mojang/android/net/WebRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z

    .line 317
    const/4 v0, 0x5

    iput v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->retryTimeout:I

    .line 226
    iput p1, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    .line 227
    return-void
.end method

.method public constructor <init>(ILorg/apache/http/client/methods/HttpRequestBase;J)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "voidptr"    # J

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z

    .line 317
    const/4 v0, 0x5

    iput v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->retryTimeout:I

    .line 229
    iput p1, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    .line 230
    iput-object p2, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 231
    iput-wide p3, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->voidptr:J

    .line 232
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z

    .line 254
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 257
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/http/client/HttpClient;)V
    .locals 7
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 259
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    iget-object v6, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    if-eq v5, v6, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {p1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 275
    :goto_1
    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_0

    .line 279
    :try_start_1
    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 280
    .local v4, "responseCode":I
    const/16 v5, 0xcc

    if-ne v4, v5, :cond_3

    .line 281
    const-string v5, ""

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;

    .line 294
    :cond_2
    :goto_2
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 295
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 297
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_PARSE:Lcom/mojang/android/net/WebRequestManager$Status;

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    goto :goto_0

    .line 264
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e1":Lorg/apache/http/client/ClientProtocolException;
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_URLFORMAT:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {p0, v5}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    .line 266
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v1    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 268
    .local v1, "e1":Ljava/io/IOException;
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {p0, v5}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    .line 269
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 271
    .local v1, "e1":Ljava/lang/Exception;
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {p0, v5}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v4    # "responseCode":I
    :cond_3
    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_4

    .line 283
    :try_start_2
    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;

    const-string v6, "Retry-After"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v3

    .line 284
    .local v3, "h":Lorg/apache/http/Header;
    if-eqz v3, :cond_2

    .line 286
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->retryTimeout:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    .line 287
    :catch_4
    move-exception v5

    goto :goto_2

    .line 291
    .end local v3    # "h":Lorg/apache/http/Header;
    :cond_4
    :try_start_4
    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 292
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 298
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "responseCode":I
    :catch_5
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    sget-object v5, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

    iput-object v5, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

    iget-object v1, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {v0}, Lcom/mojang/android/net/WebRequestManager$Status;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;
    .locals 1
    .param p1, "errorCode"    # Lcom/mojang/android/net/WebRequestManager$Status;

    .prologue
    .line 247
    sget-boolean v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mojang/android/net/WebRequestManager$Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->status:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 249
    return-object p0
.end method

.method public waitForSeconds(I)V
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    mul-int/lit8 v2, p1, 0x5

    if-ge v0, v2, :cond_0

    .line 235
    iget-boolean v2, p0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z

    if-eqz v2, :cond_1

    .line 244
    :cond_0
    return-void

    .line 238
    :cond_1
    mul-int/lit16 v2, v0, 0xc8

    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
