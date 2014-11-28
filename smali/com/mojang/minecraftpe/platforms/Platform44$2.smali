.class Lcom/mojang/minecraftpe/platforms/Platform44$2;
.super Ljava/lang/Object;
.source "Platform44.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 26
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform44$2;->this$0:Lcom/mojang/minecraftpe/platforms/Platform44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44$2;->this$0:Lcom/mojang/minecraftpe/platforms/Platform44;

    # getter for: Lcom/mojang/minecraftpe/platforms/Platform44;->decoreView:Landroid/view/View;
    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform44;->access$200(Lcom/mojang/minecraftpe/platforms/Platform44;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    return-void
.end method
