.class Lcom/mojang/minecraftpe/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 144
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$1;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    const-string v1, "mcpe - keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEditorAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "handled":Z
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$1;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    .line 152
    const/4 v0, 0x1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v1, 0x7

    if-ne p2, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$1;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method
