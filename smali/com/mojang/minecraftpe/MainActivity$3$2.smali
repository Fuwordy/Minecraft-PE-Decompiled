.class Lcom/mojang/minecraftpe/MainActivity$3$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$3;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity$3;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$3$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "mcpe - keyboard"

    const-string v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$3$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$3;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$3;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    .line 197
    return-void
.end method
