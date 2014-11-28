.class public final enum Lcom/mojang/android/net/WebRequestManager$Status;
.super Ljava/lang/Enum;
.source "WebRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/android/net/WebRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mojang/android/net/WebRequestManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FAIL_CANCELLED:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FAIL_PARSE:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FAIL_TIMEOUT:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FAIL_URLFORMAT:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

.field public static final enum REQUEST_NOT_FOUND:Lcom/mojang/android/net/WebRequestManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "REQUEST_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->REQUEST_NOT_FOUND:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 209
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 210
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 211
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FAIL_URLFORMAT"

    invoke-direct {v0, v1, v6}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_URLFORMAT:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 212
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FAIL_PARSE"

    invoke-direct {v0, v1, v7}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_PARSE:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 213
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FAIL_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_TIMEOUT:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 214
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FAIL_GENERAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 215
    new-instance v0, Lcom/mojang/android/net/WebRequestManager$Status;

    const-string v1, "FAIL_CANCELLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mojang/android/net/WebRequestManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_CANCELLED:Lcom/mojang/android/net/WebRequestManager$Status;

    .line 207
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mojang/android/net/WebRequestManager$Status;

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->REQUEST_NOT_FOUND:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_URLFORMAT:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_PARSE:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_TIMEOUT:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_GENERAL:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mojang/android/net/WebRequestManager$Status;->FAIL_CANCELLED:Lcom/mojang/android/net/WebRequestManager$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->$VALUES:[Lcom/mojang/android/net/WebRequestManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mojang/android/net/WebRequestManager$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v0, Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mojang/android/net/WebRequestManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/mojang/android/net/WebRequestManager$Status;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->$VALUES:[Lcom/mojang/android/net/WebRequestManager$Status;

    invoke-virtual {v0}, [Lcom/mojang/android/net/WebRequestManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/android/net/WebRequestManager$Status;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/mojang/android/net/WebRequestManager$Status;->ordinal()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->PENDING:Lcom/mojang/android/net/WebRequestManager$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mojang/android/net/WebRequestManager$Status;->FINISHED:Lcom/mojang/android/net/WebRequestManager$Status;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
