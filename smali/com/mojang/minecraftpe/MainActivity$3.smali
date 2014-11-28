.class Lcom/mojang/minecraftpe/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZ)V
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
    .line 174
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$3;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$3;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$3$2;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$3$2;-><init>(Lcom/mojang/minecraftpe/MainActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public onDeleteKeyPressed()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$3;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$3$1;-><init>(Lcom/mojang/minecraftpe/MainActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method
