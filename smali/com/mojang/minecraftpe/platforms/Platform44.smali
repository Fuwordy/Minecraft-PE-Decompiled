.class public Lcom/mojang/minecraftpe/platforms/Platform44;
.super Lcom/mojang/minecraftpe/platforms/Platform23;
.source "Platform44.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private decorViewSettings:Ljava/lang/Runnable;

.field private decoreView:Landroid/view/View;

.field private eventHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform23;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->eventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/platforms/Platform44;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/platforms/Platform44;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mojang/minecraftpe/platforms/Platform44;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/platforms/Platform44;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mojang/minecraftpe/platforms/Platform44;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/platforms/Platform44;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decoreView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAppStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decoreView:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decoreView:Landroid/view/View;

    new-instance v1, Lcom/mojang/minecraftpe/platforms/Platform44$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/platforms/Platform44$1;-><init>(Lcom/mojang/minecraftpe/platforms/Platform44;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 25
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform44$2;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/platforms/Platform44$2;-><init>(Lcom/mojang/minecraftpe/platforms/Platform44;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decorViewSettings:Ljava/lang/Runnable;

    .line 38
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mojang/minecraftpe/platforms/Platform44;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_0
    return-void
.end method

.method public onVolumePressed()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
