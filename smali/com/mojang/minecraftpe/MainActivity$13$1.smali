.class Lcom/mojang/minecraftpe/MainActivity$13$1;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$13;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity$13;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$13$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 17
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 552
    move-object/from16 v3, p2

    .line 553
    .local v3, "baseURL":Ljava/lang/String;
    const-string v11, ""

    .line 554
    .local v11, "params":Ljava/lang/String;
    const-string v15, "?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 555
    const-string v15, "\\?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 556
    .local v12, "parts":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v3, v12, v15

    .line 557
    const/4 v15, 0x1

    aget-object v11, v12, v15

    .line 559
    .end local v12    # "parts":[Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 560
    .local v1, "accessToken":Ljava/lang/String;
    const-string v4, ""

    .line 561
    .local v4, "clientId":Ljava/lang/String;
    const-string v13, ""

    .line 562
    .local v13, "profileId":Ljava/lang/String;
    const-string v14, ""

    .line 563
    .local v14, "profileName":Ljava/lang/String;
    const-string v8, ""

    .line 565
    .local v8, "newuser":Ljava/lang/String;
    const-string v15, "https://account.mojang.com/m/launch"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 567
    const-string v15, "&"

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 568
    .local v10, "parameters":[Ljava/lang/String;
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v5, v2, v6

    .line 569
    .local v5, "curParam":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, "paramParts":[Ljava/lang/String;
    array-length v15, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 571
    const/4 v15, 0x0

    aget-object v15, v9, v15

    const-string v16, "accessToken"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 572
    const/4 v15, 0x1

    aget-object v1, v9, v15

    .line 568
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 573
    :cond_2
    const/4 v15, 0x0

    aget-object v15, v9, v15

    const-string v16, "clientToken"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 574
    const/4 v15, 0x1

    aget-object v4, v9, v15

    goto :goto_1

    .line 575
    :cond_3
    const/4 v15, 0x0

    aget-object v15, v9, v15

    const-string v16, "profileUuid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 576
    const/4 v15, 0x1

    aget-object v13, v9, v15

    goto :goto_1

    .line 577
    :cond_4
    const/4 v15, 0x0

    aget-object v15, v9, v15

    const-string v16, "profileName"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 578
    const/4 v15, 0x1

    aget-object v14, v9, v15

    goto :goto_1

    .line 579
    :cond_5
    const/4 v15, 0x0

    aget-object v15, v9, v15

    const-string v16, "newuser"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 580
    const/4 v15, 0x1

    aget-object v8, v9, v15

    goto :goto_1

    .line 583
    .end local v5    # "curParam":Ljava/lang/String;
    .end local v9    # "paramParts":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mojang/minecraftpe/MainActivity$13$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    iget-object v15, v15, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v15, v1, v4, v13, v14}, Lcom/mojang/minecraftpe/MainActivity;->nativeLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mojang/minecraftpe/MainActivity$13$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    iget-object v15, v15, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v15, v15, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->cancel()V

    .line 595
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mojang/minecraftpe/MainActivity$13$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    iget-object v15, v15, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/mojang/minecraftpe/MainActivity;->mLoginDialog:Landroid/app/Dialog;

    .line 596
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mojang/minecraftpe/MainActivity$13$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    iget-object v15, v15, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 598
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "parameters":[Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 547
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 548
    return-void
.end method
