.class public Lcom/mojang/minecraftpe/MainActivity;
.super Landroid/app/NativeActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;


# static fields
.field private static _isPowerVr:Z


# instance fields
.field private final DateFormat:Ljava/text/DateFormat;

.field private _isTouchscreen:Z

.field private _userInputStatus:I

.field private _userInputText:[Ljava/lang/String;

.field private _userInputValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mojang/android/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private _viewDistance:I

.field private data:Landroid/os/Bundle;

.field private deviceId:Ljava/lang/String;

.field private deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field mHiddenTextInputDialog:Landroid/widget/PopupWindow;

.field mLoginDialog:Landroid/app/Dialog;

.field mWebView:Landroid/webkit/WebView;

.field platform:Lcom/mojang/minecraftpe/platforms/Platform;

.field public preloadingHTML:Ljava/lang/String;

.field textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

.field private userID:Ljava/lang/String;

.field webRequestManager:Lcom/mojang/android/net/WebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    .line 897
    const-string v0, "minecraftpe"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_isTouchscreen:Z

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_viewDistance:I

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->userID:Ljava/lang/String;

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    .line 760
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->DateFormat:Ljava/text/DateFormat;

    .line 900
    const-string v0, "<!doctype html><html><head><meta charset=\"utf-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><title>Log in</title><meta name=\"description\" content=\"\"><meta name=\"author\" content=\"\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=1\"></head><body style=\"padding:0;margin:0;background:linear-gradient(#F9F9F9, #EEEEEE) repeat scroll 0 0 #F9F9F9;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;\"><tr style=\"height:40px;\"><td style=\"background: #111111;border:1px solid #333;\"><div style=\"margin:0 auto;width:320px;line-height:26px;\"><img style=\"width:120px;height:30px;float:left;margin-right:24px;vertical-align:middle;\" alt=\"\" src=\"data:image/png;base64,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\" /><div style=\"float:left;font-size:16px;font-weight:bold;color:#fff;font-family:Helvetica,Arial,sans-serif;text-shadow:0 -1px 1px #000000;\">Log in</div><div style=\"clear:both;\"></div></div></td></tr><tr style=\"height:235px;\"><td><div style=\"margin:0 auto;width:320px;text-align:center;font-family: Helvetica,Arial,sans-serif;text-shadow: 0 1px 0 #FFFFFF;font-size:24px;font-weight:bold;\">Loading&hellip;</div></td></tr><tr style=\"height:32px;\"><td style=\"background: #111111;border:1px solid #333;\"><div style=\"text-align:center;margin:0 auto;width:320px;line-height:26px;font-size:12px;font-weight:bold;color:#fff;font-family:Helvetica,Arial,sans-serif;text-shadow:0 -1px 1px #000000;\">Mojang &copy; 2013</div></td></tr></table></body></html>"

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->preloadingHTML:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCanceled()V

    return-void
.end method

.method static synthetic access$100(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCompleted()V

    return-void
.end method

.method private createAlertDialog(ZZZ)V
    .locals 3
    .param p1, "hasOkButton"    # Z
    .param p2, "hasCancelButton"    # Z
    .param p3, "preventBackKey"    # Z

    .prologue
    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    if-eqz p3, :cond_0

    .line 314
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    :cond_0
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$9;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    if-eqz p1, :cond_1

    .line 324
    const-string v1, "Ok"

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$10;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$10;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    :cond_1
    if-eqz p2, :cond_2

    .line 328
    const-string v1, "Cancel"

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$11;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mDialog:Landroid/app/AlertDialog;

    .line 332
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 333
    return-void
.end method

.method public static isPowerVR()Z
    .locals 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return v0
.end method

.method public static isXperiaPlay()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 347
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v4, v6

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v7, 0x2

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 350
    .local v4, "tags":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 351
    .local v3, "tag":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v7, "r800"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 356
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 353
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_1
    const-string v7, "so-01d"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 354
    const-string v7, "xperia"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    const-string v7, "play"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "tag":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 356
    goto :goto_1
.end method

.method private onDialogCanceled()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 770
    return-void
.end method

.method private onDialogCompleted()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 780
    iget-object v8, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 781
    .local v7, "size":I
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .line 782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 783
    iget-object v9, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mojang/android/StringValue;

    invoke-interface {v8}, Lcom/mojang/android/StringValue;->getStringValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v1

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .local v6, "s":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "js: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 787
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iput v11, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 788
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 789
    .local v3, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    .line 790
    .local v5, "result":Z
    return-void
.end method

.method public static saveScreenshot(Ljava/lang/String;II[I)V
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "pixels"    # [I

    .prologue
    .line 388
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 399
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 405
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 406
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public abortWebRequest(I)I
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 873
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->webRequestManager:Lcom/mojang/android/net/WebRequestManager;

    invoke-virtual {v0, p1}, Lcom/mojang/android/net/WebRequestManager;->abortWebRequest(I)I

    move-result v0

    return v0
.end method

.method public buyGame()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public checkLicense()I
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public clearLoginInformation()V
    .locals 3

    .prologue
    .line 648
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 649
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 650
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accessToken"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    const-string v2, "clientId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v2, "profileId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    const-string v2, "profileName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeTypeCharacter(Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displayDialog(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 516
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 658
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "accessToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAndroidVersion()I
    .locals 1

    .prologue
    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBroadcastAddresses()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "java.net.preferIPv4Stack"

    const-string v6, "true"

    invoke-static {v5, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 733
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "niEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 734
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 735
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-nez v5, :cond_0

    .line 736
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 737
    .local v1, "interfaceAddress":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 738
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "interfaceAddress":Ljava/net/InterfaceAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    .end local v4    # "niEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v5

    .line 745
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clientId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDateString(I)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->DateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getDeviceModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDataBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 420
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 421
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 428
    .local v5, "s":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v6, v7, [B

    .line 432
    .local v6, "tmp":[B
    :goto_0
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 433
    .local v2, "count":I
    if-gtz v2, :cond_0

    .line 438
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 442
    .end local v2    # "count":I
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "s":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "tmp":[B
    :goto_2
    return-object v7

    .line 422
    :catch_0
    move-exception v3

    .line 423
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 424
    const/4 v7, 0x0

    goto :goto_2

    .line 434
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "count":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "s":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "tmp":[B
    :cond_0
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v6, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 436
    .end local v2    # "count":I
    :catch_1
    move-exception v7

    .line 438
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 439
    :catch_2
    move-exception v7

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 439
    :goto_3
    throw v7

    .restart local v2    # "count":I
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v2    # "count":I
    :catch_4
    move-exception v8

    goto :goto_3
.end method

.method public getImageData(Ljava/lang/String;)[I
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 447
    .local v8, "assets":Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 449
    .local v10, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 455
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 457
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 459
    .local v7, "h":I
    mul-int v2, v3, v7

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 460
    .local v1, "pixels":[I
    aput v3, v1, v4

    .line 461
    const/4 v2, 0x1

    aput v7, v1, v2

    .line 462
    const/4 v2, 0x2

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 464
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "w":I
    .end local v7    # "h":I
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v9

    .line 451
    .local v9, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageData: Could not open image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyFromKeyCode(III)I
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "deviceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 375
    if-gez p3, :cond_2

    .line 376
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 377
    .local v1, "ids":[I
    array-length v3, v1

    if-nez v3, :cond_1

    .line 385
    .end local v1    # "ids":[I
    :cond_0
    :goto_0
    return v2

    .line 379
    .restart local v1    # "ids":[I
    :cond_1
    aget p3, v1, v2

    .line 381
    .end local v1    # "ids":[I
    :cond_2
    invoke-static {p3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 382
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v2

    goto :goto_0
.end method

.method public getPixelsPerMillimeter()F
    .locals 3

    .prologue
    .line 490
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 491
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 493
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    const v2, 0x41cb3333

    div-float/2addr v1, v2

    return v1
.end method

.method public getPlatformStringVar(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 523
    if-nez p1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "profileId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 673
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 674
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "profileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScreenHeight()I
    .locals 5

    .prologue
    .line 475
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 476
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 477
    .local v1, "out":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getheight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    return v1
.end method

.method public getScreenWidth()I
    .locals 5

    .prologue
    .line 468
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 469
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 470
    .local v1, "out":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getwidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    return v1
.end method

.method public getTotalMemory()J
    .locals 4

    .prologue
    .line 773
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 774
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 775
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 776
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public getUserInputStatus()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return v0
.end method

.method public getUserInputString()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebRequestContent(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->webRequestManager:Lcom/mojang/android/net/WebRequestManager;

    invoke-virtual {v0, p1}, Lcom/mojang/android/net/WebRequestManager;->getWebRequestContent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebRequestStatus(I)I
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->webRequestManager:Lcom/mojang/android/net/WebRequestManager;

    invoke-virtual {v0, p1}, Lcom/mojang/android/net/WebRequestManager;->getWebRequestStatus(I)I

    move-result v0

    return v0
.end method

.method public hasBuyButtonWhenInvalidLicense()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$7;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public initiateUserInput(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .line 754
    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 755
    return-void
.end method

.method protected isDemo()Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkEnabled(Z)Z
    .locals 4
    .param p1, "onlyWifiAllowed"    # Z

    .prologue
    const/4 v2, 0x1

    .line 528
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 529
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 532
    .local v1, "info":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v2

    .line 529
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    .line 532
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method native nativeBackPressed()V
.end method

.method native nativeBackSpacePressed()V
.end method

.method native nativeLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeRegisterThis()V
.end method

.method native nativeReturnKeyPressed()V
.end method

.method native nativeSetTextboxText(Ljava/lang/String;)V
.end method

.method native nativeStopThis()V
.end method

.method native nativeSuspend()V
.end method

.method native nativeTypeCharacter(Ljava/lang/String;)V
.end method

.method native nativeUnregisterThis()V
.end method

.method native nativeWebRequestCompleted(IJILjava/lang/String;)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 509
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-static {}, Lcom/mojang/minecraftpe/platforms/Platform;->createPlatform()Lcom/mojang/minecraftpe/platforms/Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->setVolumeControlStream(I)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeRegisterThis()V

    .line 109
    new-instance v0, Lcom/mojang/android/net/WebRequestManager;

    invoke-direct {v0, p0}, Lcom/mojang/android/net/WebRequestManager;-><init>(Lcom/mojang/android/net/WebRequestManager$IRequestCompleteCallback;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->webRequestManager:Lcom/mojang/android/net/WebRequestManager;

    .line 110
    invoke-static {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->create(Landroid/content/Context;)Lcom/mojang/minecraftpe/input/InputDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    .line 111
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/platforms/Platform;->onAppStart(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 851
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeUnregisterThis()V

    .line 854
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 855
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 128
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->onBackPressed()V

    .line 130
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 131
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->onVolumePressed()V

    .line 134
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeSuspend()V

    .line 840
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 841
    return-void
.end method

.method public onRequestComplete(IJILjava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "userData"    # J
    .param p4, "httpStatusOrNegativeError"    # I
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-virtual/range {p0 .. p5}, Lcom/mojang/minecraftpe/MainActivity;->nativeWebRequestCompleted(IJILjava/lang/String;)V

    .line 878
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 827
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 828
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 829
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "oldText":Ljava/lang/String;
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget v1, v3, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    .line 831
    .local v1, "maxNumCharacters":I
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget-boolean v0, v3, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->limitInput:Z

    .line 832
    .local v0, "limitInput":Z
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 833
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    .line 834
    invoke-virtual {p0, v2, v1, v0}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZ)V

    .line 836
    .end local v0    # "limitInput":Z
    .end local v1    # "maxNumCharacters":I
    .end local v2    # "oldText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 795
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 797
    const-string v0, "7a5baa29"

    .line 801
    .local v0, "apiKey":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceId:Ljava/lang/String;

    .line 822
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->register()V

    .line 823
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeStopThis()V

    .line 846
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 848
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->unregister()V

    .line 849
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 364
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/platforms/Platform;->onViewFocusChanged(Z)V

    .line 365
    return-void
.end method

.method public openLoginWindow()V
    .locals 1

    .prologue
    .line 538
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$13;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public postScreenshotToFacebook(Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "pixels"    # [I

    .prologue
    .line 505
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$12;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method public setIsPowerVR(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 336
    sput-boolean p1, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return-void
.end method

.method public setLoginInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 639
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accessToken"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 641
    const-string v2, "clientId"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 642
    const-string v2, "profileId"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 643
    const-string v2, "profileName"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 645
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 632
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "refreshToken"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 625
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sessionID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void
.end method

.method public setupKeyboardViews(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "limitInput"    # Z

    .prologue
    const v9, -0xc350

    const/4 v8, -0x2

    const/4 v7, -0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    new-instance v3, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {v3, p0, p2, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .line 139
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v3, v6}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusable(Z)V

    .line 140
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v3, v6}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusableInTouchMode(Z)V

    .line 141
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 142
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const v4, 0x10000005

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setImeOptions(I)V

    .line 143
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v3, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$1;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$2;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$3;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V

    .line 202
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    .line 203
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 205
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    const/16 v4, 0x140

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 206
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 207
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 208
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 209
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 214
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 215
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 216
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 222
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$4;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1, v5, v9, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 234
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 235
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 237
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 239
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1, v5, v9, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 240
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 241
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 243
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$5;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method public showKeyboard(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "limitInput"    # Z

    .prologue
    .line 258
    move-object v2, p1

    .line 259
    .local v2, "startText":Ljava/lang/String;
    move v1, p2

    .line 260
    .local v1, "fMaxLength":I
    move v0, p3

    .line 261
    .local v0, "fLimitInput":Z
    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$6;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/mojang/minecraftpe/MainActivity$6;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v3}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public statsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventParameters"    # Ljava/lang/String;

    .prologue
    .line 692
    return-void
.end method

.method public statsUpdateUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "graphicsVendor"    # Ljava/lang/String;
    .param p2, "graphicsRenderer"    # Ljava/lang/String;

    .prologue
    .line 727
    return-void
.end method

.method public supportsNonTouchscreen()Z
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/mojang/minecraftpe/MainActivity;->isXperiaPlay()Z

    move-result v0

    return v0
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public updateTextboxText(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 280
    move-object v0, p1

    .line 281
    .local v0, "setText":Ljava/lang/String;
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$8;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public vibrate(I)V
    .locals 3
    .param p1, "milliSeconds"    # I

    .prologue
    .line 764
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 765
    .local v0, "v":Landroid/os/Vibrator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 766
    return-void
.end method

.method public webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "voidptr"    # J
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "cookieData"    # Ljava/lang/String;
    .param p7, "httpBody"    # Ljava/lang/String;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->webRequestManager:Lcom/mojang/android/net/WebRequestManager;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mojang/android/net/WebRequestManager;->webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method
