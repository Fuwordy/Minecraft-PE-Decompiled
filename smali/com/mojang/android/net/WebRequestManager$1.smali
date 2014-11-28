.class Lcom/mojang/android/net/WebRequestManager$1;
.super Ljava/lang/Object;
.source "WebRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/android/net/WebRequestManager;->webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/android/net/WebRequestManager;

.field final synthetic val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;


# direct methods
.method constructor <init>(Lcom/mojang/android/net/WebRequestManager;Lcom/mojang/android/net/WebRequestManager$WebRequestData;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mojang/android/net/WebRequestManager$1;->this$0:Lcom/mojang/android/net/WebRequestManager;

    iput-object p2, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-object v1, p0, Lcom/mojang/android/net/WebRequestManager$1;->this$0:Lcom/mojang/android/net/WebRequestManager;

    # getter for: Lcom/mojang/android/net/WebRequestManager;->_httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lcom/mojang/android/net/WebRequestManager;->access$000(Lcom/mojang/android/net/WebRequestManager;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->execute(Lorg/apache/http/client/HttpClient;)V

    .line 143
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    invoke-virtual {v0}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_2

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->this$0:Lcom/mojang/android/net/WebRequestManager;

    # getter for: Lcom/mojang/android/net/WebRequestManager;->_requestlock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mojang/android/net/WebRequestManager;->access$100(Lcom/mojang/android/net/WebRequestManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-boolean v0, v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->this$0:Lcom/mojang/android/net/WebRequestManager;

    # getter for: Lcom/mojang/android/net/WebRequestManager;->onRequestCompleteCallback:Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;
    invoke-static {v0}, Lcom/mojang/android/net/WebRequestManager;->access$200(Lcom/mojang/android/net/WebRequestManager;)Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget v1, v1, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->requestId:I

    iget-object v2, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-wide v2, v2, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->voidptr:J

    iget-object v4, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    invoke-virtual {v4}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->getStatusCode()I

    move-result v4

    iget-object v5, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-object v5, v5, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->content:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;->onRequestComplete(IJILjava/lang/String;)V

    .line 165
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void

    .line 146
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-object v1, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget v1, v1, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->retryTimeout:I

    invoke-virtual {v0, v1}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->waitForSeconds(I)V

    .line 147
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    iget-boolean v0, v0, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->aborted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    iget-object v0, p0, Lcom/mojang/android/net/WebRequestManager$1;->val$request:Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_TIMEOUT:Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {v0, v1}, Lcom/mojang/android/net/WebRequestManager$WebRequestData;->markError(Lcom/mojang/android/net/WebRequestManager$Status;)Lcom/mojang/android/net/WebRequestManager$WebRequestData;

    goto :goto_0

    .line 165
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
