.class Lcom/mojang/minecraftpe/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$3;->onDeleteKeyPressed()V
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
    .line 177
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$3$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$3$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$3;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$3;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackSpacePressed()V

    .line 182
    return-void
.end method
