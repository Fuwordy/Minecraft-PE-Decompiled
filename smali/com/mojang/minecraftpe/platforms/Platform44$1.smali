.class Lcom/mojang/minecraftpe/platforms/Platform44$1;
.super Ljava/lang/Object;
.source "Platform44.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/platforms/Platform44;->onAppStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/platforms/Platform44;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/platforms/Platform44;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform44$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform44;

    # getter for: Lcom/mojang/minecraftpe/platforms/Platform44;->eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform44;->access$100(Lcom/mojang/minecraftpe/platforms/Platform44;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/platforms/Platform44$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform44;

    # getter for: Lcom/mojang/minecraftpe/platforms/Platform44;->decorViewSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mojang/minecraftpe/platforms/Platform44;->access$000(Lcom/mojang/minecraftpe/platforms/Platform44;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method
