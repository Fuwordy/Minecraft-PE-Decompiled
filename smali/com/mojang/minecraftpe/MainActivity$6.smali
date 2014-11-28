.class Lcom/mojang/minecraftpe/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$fLimitInput:Z

.field final synthetic val$fMaxLength:I

.field final synthetic val$startText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$startText:Ljava/lang/String;

    iput p3, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$fMaxLength:I

    iput-boolean p4, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$fLimitInput:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$startText:Ljava/lang/String;

    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$fMaxLength:I

    iget-boolean v3, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$fLimitInput:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZ)V

    .line 264
    return-void
.end method
