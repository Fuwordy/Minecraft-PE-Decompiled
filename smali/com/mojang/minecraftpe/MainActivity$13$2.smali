.class Lcom/mojang/minecraftpe/MainActivity$13$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 602
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$13$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$13$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$13;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$13;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://account.mojang.com/m/login?app=mcpe&version=0.7.4/m/login?app=mcpe&version=0.7.4"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 605
    return-void
.end method
