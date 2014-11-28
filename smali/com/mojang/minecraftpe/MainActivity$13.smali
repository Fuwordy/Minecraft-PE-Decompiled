.class Lcom/mojang/minecraftpe/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->openLoginWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x400

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 540
    const-string v7, "https://account.mojang.com"

    .line 541
    .local v7, "baseAdress":Ljava/lang/String;
    const-string v6, "https://account.mojang.com/m/login?app=mcpe&version=0.7.4"

    .line 542
    .local v6, "adress":Ljava/lang/String;
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 543
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$13$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$13$1;-><init>(Lcom/mojang/minecraftpe/MainActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 600
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, ""

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, v2, Lcom/mojang/minecraftpe/MainActivity;->preloadingHTML:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 602
    .local v8, "poolExec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$13$2;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$13$2;-><init>(Lcom/mojang/minecraftpe/MainActivity$13;)V

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 609
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    .line 610
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 611
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, v1, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 613
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 614
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 615
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 616
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 617
    return-void
.end method
