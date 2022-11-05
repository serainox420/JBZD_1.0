.class public Lcom/flurry/sdk/gy;
.super Lcom/flurry/sdk/gz;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gy$a;,
        Lcom/flurry/sdk/gy$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/flurry/sdk/gz$a;

.field a:Ljava/lang/String;

.field b:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ha;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/gm;

.field private e:Z

.field private f:Lcom/flurry/sdk/hk;

.field private g:I

.field private h:Z

.field private i:Landroid/webkit/WebViewClient;

.field private j:Landroid/webkit/WebChromeClient;

.field private k:Lcom/flurry/sdk/hp;

.field private l:Landroid/view/View;

.field private m:I

.field private n:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/widget/FrameLayout;

.field private q:I

.field private r:Landroid/app/Dialog;

.field private s:Landroid/widget/FrameLayout;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroid/app/AlertDialog;

.field private z:Lcom/flurry/sdk/cm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 3

    .prologue
    .line 811
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gz;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 87
    const-class v0, Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->x:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/flurry/sdk/gy$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gy$1;-><init>(Lcom/flurry/sdk/gy;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->b:Lcom/flurry/sdk/kh;

    .line 1056
    new-instance v0, Lcom/flurry/sdk/gy$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gy$4;-><init>(Lcom/flurry/sdk/gy;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->B:Lcom/flurry/sdk/gz$a;

    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->setClickable(Z)V

    .line 814
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 816
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gy;->g:I

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdUnit()Lcom/flurry/sdk/cs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdUnit()Lcom/flurry/sdk/cs;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/cs;->u:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->v:Z

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v2, "adunit is Null"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic A(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/gm;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/flurry/sdk/gy;->m:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/gy;->o:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 1109
    .line 1111
    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Getting video from cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 9251
    iget-object v1, v1, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 1112
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1113
    if-eqz v1, :cond_0

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1121
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1125
    :cond_1
    return-object v0

    .line 1116
    :catch_0
    move-exception v1

    .line 1118
    iget-object v2, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v5, v2, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/gy;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/gy;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/gy;->p:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1278
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 11224
    iget-object v1, v1, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 1278
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/p;->b(Landroid/content/Context;)V

    .line 1279
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 11228
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 1279
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    .line 1281
    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collapse("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1287
    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 1288
    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1289
    iget-object v1, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1291
    :cond_2
    iput-object v4, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    .line 1293
    iget v1, p0, Lcom/flurry/sdk/gy;->q:I

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;I)V

    .line 1295
    iget-object v0, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 1296
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    .line 1297
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1300
    :cond_3
    iput-object v4, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    .line 1303
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;)V
    .locals 3

    .prologue
    .line 12827
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v2, "closing ad unity view"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12828
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_0

    .line 12829
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->A()V

    .line 12831
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->onViewClose()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;)V
    .locals 4

    .prologue
    .line 80
    .line 13191
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget v0, v0, Lcom/flurry/sdk/cr;->a:I

    .line 13192
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget v1, v1, Lcom/flurry/sdk/cr;->b:I

    .line 13194
    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v2

    .line 13195
    invoke-static {v1}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v1

    .line 13196
    iget-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    .line 13199
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->initLayout()V

    .line 14055
    :cond_0
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 15035
    iget-object v0, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 13205
    instance-of v3, v0, Lcom/flurry/sdk/s;

    if-eqz v3, :cond_1

    .line 13206
    check-cast v0, Lcom/flurry/sdk/s;

    .line 13207
    invoke-interface {v0}, Lcom/flurry/sdk/s;->u()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13208
    invoke-direct {p0, v2, v1}, Lcom/flurry/sdk/gy;->a(II)V

    .line 80
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/ha;)V
    .locals 7

    .prologue
    const/4 v2, 0x6

    .line 12215
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v1, "show Video dialog."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12217
    iget-object v3, p1, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 12218
    iget v4, p1, Lcom/flurry/sdk/ha;->c:I

    .line 12221
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 12222
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v1, "Already showing a dialog."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12230
    :cond_0
    :goto_0
    return-void

    .line 12228
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->isViewAttachedToActivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12229
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v1, "View not attached to any window."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12245
    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12249
    const-string v0, "message"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12250
    const-string v0, "confirmDisplay"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12251
    const-string v0, "cancelDisplay"

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12253
    :cond_3
    const-string v2, "Are you sure?"

    .line 12254
    const-string v1, "Cancel"

    .line 12255
    const-string v0, "OK"

    .line 12257
    :cond_4
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 12258
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 12259
    new-instance v2, Lcom/flurry/sdk/gy$2;

    invoke-direct {v2, p0, v3, v4}, Lcom/flurry/sdk/gy$2;-><init>(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;I)V

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12273
    new-instance v0, Lcom/flurry/sdk/gy$3;

    invoke-direct {v0, p0, v3, v4}, Lcom/flurry/sdk/gy$3;-><init>(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;I)V

    invoke-virtual {v5, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12292
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12293
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    .line 12294
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 12295
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->w()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gy;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1095
    if-nez p1, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-nez v1, :cond_1

    .line 1100
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gy;->B:Lcom/flurry/sdk/gz$a;

    invoke-static {v0, p2, v1, v2}, Lcom/flurry/sdk/gn;->a(Landroid/content/Context;ILcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)Lcom/flurry/sdk/gm;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    .line 1101
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->setVideoUri(Landroid/net/Uri;)V

    .line 1102
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->initLayout()V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private declared-synchronized a()Z
    .locals 1

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gy;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gy;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v2, "initializeFlurryJsEnv"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    const-string v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    const-string v1, "var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    const-string v1, "var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string v1, "window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    const-string v1, "window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 739
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :cond_1
    monitor-exit p0

    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 16122
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 16126
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 15162
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "expand to width = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " height = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 17055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 18035
    iget-object v1, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 18055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 19039
    iget-object v4, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 15168
    instance-of v0, v1, Lcom/flurry/sdk/s;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 15169
    check-cast v0, Lcom/flurry/sdk/s;

    .line 15170
    invoke-interface {v0}, Lcom/flurry/sdk/s;->u()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15171
    sget-object v0, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v4, v6}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 19197
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 19198
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v2, "no activity present"

    invoke-static {v9, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21055
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 15176
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 15177
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    .line 15179
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->j()V

    .line 15180
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;)Z

    .line 80
    :cond_1
    return-void

    .line 19202
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 19204
    iget-object v5, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    if-nez v5, :cond_0

    .line 19208
    iget-object v5, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "expand("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v5, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 19211
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 20224
    iget-object v2, v2, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 19211
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/p;->a(Landroid/content/Context;)V

    .line 19212
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 20228
    iget-object v2, v2, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 19212
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    .line 19214
    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gy;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v8, v2, :cond_3

    .line 19215
    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gy;->removeView(Landroid/view/View;)V

    .line 19218
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/flurry/sdk/gy;->q:I

    .line 19220
    iget-object v2, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    .line 19221
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    .line 19222
    iget-object v2, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 19223
    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v2}, Lcom/flurry/sdk/hk;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 19224
    iget-object v2, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v8, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19230
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    if-nez v2, :cond_5

    .line 19231
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x103000a

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    .line 19233
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/fq;->a(Landroid/view/Window;)V

    .line 19234
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/flurry/sdk/gy;->s:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19237
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    new-instance v3, Lcom/flurry/sdk/gy$6;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/gy$6;-><init>(Lcom/flurry/sdk/gy;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 19246
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19247
    iget-object v2, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 19253
    :cond_5
    iget-boolean v2, p0, Lcom/flurry/sdk/gy;->w:Z

    if-eqz v2, :cond_7

    .line 19255
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19256
    invoke-static {v0, v10}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 19259
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v2

    instance-of v2, v2, Lcom/flurry/sdk/s;

    if-eqz v2, :cond_0

    .line 19260
    invoke-static {v0}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 19265
    :cond_7
    invoke-static {}, Lcom/flurry/sdk/fe;->a()I

    move-result v2

    .line 19264
    invoke-static {v0, v2}, Lcom/flurry/sdk/fe;->b(Landroid/app/Activity;I)Z

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1129
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 10136
    iput-object p1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 11027
    const/16 v1, 0x2710

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 1132
    new-instance v1, Lcom/flurry/sdk/lh;

    invoke-direct {v1}, Lcom/flurry/sdk/lh;-><init>()V

    .line 11045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 1133
    new-instance v1, Lcom/flurry/sdk/gy$5;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/gy$5;-><init>(Lcom/flurry/sdk/gy;Ljava/lang/String;)V

    .line 11049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 1169
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 1170
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gy;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/gy;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 744
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    monitor-exit p0

    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_0

    .line 1187
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callcomplete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 1190
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/gy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/gm;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1520
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdUnit()Lcom/flurry/sdk/cs;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/cs;->y:Lcom/flurry/sdk/dg;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;Lcom/flurry/sdk/dg;)I

    move-result v1

    .line 1522
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 1523
    invoke-static {v0, v1}, Lcom/flurry/sdk/fe;->b(Landroid/app/Activity;I)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->b()V

    return-void
.end method

.method private getCurrentAdFrame()Lcom/flurry/sdk/cn;
    .locals 1

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBinding()I
    .locals 1

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    return v0
.end method

.method private getCurrentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->c:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget-object v0, v0, Lcom/flurry/sdk/cr;->d:Ljava/lang/String;

    return-object v0
.end method

.method private getWebViewFactory()Lcom/flurry/sdk/hp;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/flurry/sdk/hp;

    invoke-direct {v0}, Lcom/flurry/sdk/hp;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    .line 302
    const-string v0, "WebViewFactory:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created new WebViewFactory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    goto :goto_0
.end method

.method static synthetic h(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->t:Z

    return v0
.end method

.method static synthetic l(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/flurry/sdk/gy;)I
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentBinding()I

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->A:Z

    return v0
.end method

.method static synthetic o(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->c()V

    return-void
.end method

.method static synthetic p(Lcom/flurry/sdk/gy;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 22764
    iget-object v0, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v1, "activateFlurryJsEnv"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 22766
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentContent()Ljava/lang/String;

    move-result-object v0

    .line 22769
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22776
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v1}, Lcom/flurry/sdk/hk;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 22777
    invoke-static {v1}, Lcom/flurry/sdk/mc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22778
    invoke-static {v2, v1}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22779
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22780
    iget-object v3, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content before {{mustached}} tags replacement = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 22782
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 22783
    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content after {{mustached}} tags replacement = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 22787
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22788
    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22789
    const-string v2, "(function(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22790
    const-string v2, "if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22791
    const-string v2, "if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22793
    const-string v2, "if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22794
    invoke-static {v0}, Lcom/flurry/sdk/ly;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22795
    const-string v2, "var content=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22796
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22797
    const-string v0, "\';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22798
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22800
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_1

    .line 22801
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/flurry/sdk/gy;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->w:Z

    return v0
.end method

.method static synthetic r(Lcom/flurry/sdk/gy;)V
    .locals 2

    .prologue
    .line 80
    .line 23315
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    const-string v1, "javascript:(function() { document.getElementById(\'flurry_interstitial_close\').style.display = \'none\'; })()"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic s(Lcom/flurry/sdk/gy;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 80
    .line 23545
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->A:Z

    if-nez v0, :cond_0

    .line 23547
    iput-boolean v3, p0, Lcom/flurry/sdk/gy;->A:Z

    .line 23548
    new-instance v0, Lcom/flurry/sdk/cm;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    .line 23549
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23550
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23551
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23553
    iget-object v1, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cm;->setDefaultLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 23555
    iget-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    new-instance v1, Lcom/flurry/sdk/gy$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gy$7;-><init>(Lcom/flurry/sdk/gy;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23562
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gy;->setMraidButtonVisibility(Z)V

    .line 23563
    iget-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method private declared-synchronized setFlurryJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/sdk/gy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic t(Lcom/flurry/sdk/gy;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/flurry/sdk/gy;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->p:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic x(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic y(Lcom/flurry/sdk/gy;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/flurry/sdk/gy;->m:I

    return v0
.end method

.method static synthetic z(Lcom/flurry/sdk/gy;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/gy;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/au;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1419
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fireEvent(event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 1421
    return-void
.end method

.method final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1497
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanupLayout()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->cleanupLayout()V

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    .line 842
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gy;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 843
    return-void
.end method

.method public initLayout()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x15

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 858
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLayout: ad creative layout: {width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget v3, v3, Lcom/flurry/sdk/cr;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 860
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget v3, v3, Lcom/flurry/sdk/cr;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adFrameIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 861
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    .line 3078
    iget-object v3, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 4070
    iget v3, v3, Lcom/flurry/sdk/ay;->e:I

    .line 861
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 862
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->cleanupLayout()V

    .line 865
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.AdViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gy;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 867
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 873
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->removeAllViews()V

    .line 874
    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gy;->setFocusable(Z)V

    .line 875
    invoke-virtual {p0, v4}, Lcom/flurry/sdk/gy;->setFocusableInTouchMode(Z)V

    .line 876
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->requestLayout()V

    .line 878
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentBinding()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1050
    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    .line 9040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 1050
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v1, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v6}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 1054
    :goto_0
    return-void

    .line 880
    :pswitch_0
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/go;->c:I

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 895
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdFrameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->b(I)Lcom/flurry/sdk/fr;

    move-result-object v1

    .line 897
    if-eqz v1, :cond_0

    .line 898
    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->a()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/go;->a:I

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gy;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-nez v1, :cond_2

    .line 906
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hp;->a()V

    .line 907
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/hp;->a(Landroid/content/Context;Lcom/flurry/sdk/cn;)V

    .line 908
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    .line 910
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 912
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 915
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setVerticalScrollBarEnabled(Z)V

    .line 916
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setHorizontalScrollBarEnabled(Z)V

    .line 917
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setBackgroundColor(I)V

    .line 918
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->clearCache(Z)V

    .line 920
    new-instance v0, Lcom/flurry/sdk/gy$a;

    invoke-direct {v0, p0, v6}, Lcom/flurry/sdk/gy$a;-><init>(Lcom/flurry/sdk/gy;B)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    .line 921
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 922
    new-instance v0, Lcom/flurry/sdk/gy$b;

    invoke-direct {v0, p0, v6}, Lcom/flurry/sdk/gy$b;-><init>(Lcom/flurry/sdk/gy;B)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->i:Landroid/webkit/WebViewClient;

    .line 923
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->i:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    const-string v1, "base://url/"

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 4079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 929
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 931
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 5079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 931
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 934
    :cond_3
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->u:Z

    if-eqz v0, :cond_4

    .line 935
    const-string v0, "adLoadComplete"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->c(Ljava/lang/String;)V

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 949
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 950
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->showProgressDialog()V

    .line 961
    :cond_5
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->e()V

    goto/16 :goto_0

    .line 978
    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-nez v1, :cond_7

    .line 980
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hp;->a()V

    .line 981
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/hp;->a(Landroid/content/Context;Lcom/flurry/sdk/cn;)V

    .line 983
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    .line 985
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 986
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    .line 987
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 989
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setVerticalScrollBarEnabled(Z)V

    .line 990
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setHorizontalScrollBarEnabled(Z)V

    .line 991
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->setBackgroundColor(I)V

    .line 992
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/hk;->clearCache(Z)V

    .line 994
    new-instance v0, Lcom/flurry/sdk/gy$a;

    invoke-direct {v0, p0, v6}, Lcom/flurry/sdk/gy$a;-><init>(Lcom/flurry/sdk/gy;B)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    .line 995
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 996
    new-instance v0, Lcom/flurry/sdk/gy$b;

    invoke-direct {v0, p0, v6}, Lcom/flurry/sdk/gy$b;-><init>(Lcom/flurry/sdk/gy;B)V

    iput-object v0, p0, Lcom/flurry/sdk/gy;->i:Landroid/webkit/WebViewClient;

    .line 997
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    iget-object v1, p0, Lcom/flurry/sdk/gy;->i:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1000
    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1001
    iget-object v0, p0, Lcom/flurry/sdk/gy;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->b(Ljava/lang/String;)V

    .line 1024
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 1033
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1034
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->showProgressDialog()V

    .line 1045
    :cond_9
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->e()V

    goto/16 :goto_0

    .line 1002
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdFrameIndex()I

    move-result v0

    if-nez v0, :cond_c

    .line 1004
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 6078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6320
    iget-object v2, v0, Lcom/flurry/sdk/ay;->i:Ljava/lang/String;

    .line 1005
    if-eqz v2, :cond_c

    .line 1008
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/mc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 7079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 1011
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1012
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 1013
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 8079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 1013
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 1016
    :cond_b
    iget-boolean v0, p0, Lcom/flurry/sdk/gy;->u:Z

    if-eqz v0, :cond_8

    .line 1017
    const-string v0, "adLoadComplete"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    :cond_c
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gy;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityDestroy()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1380
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy;->c:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1384
    iput-object v4, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 1389
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->onActivityDestroy()V

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_5

    .line 1394
    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Lcom/flurry/sdk/gy;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gy;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1399
    invoke-direct {p0, v3, v3}, Lcom/flurry/sdk/gy;->a(II)V

    .line 1402
    :cond_3
    iput-boolean v3, p0, Lcom/flurry/sdk/gy;->x:Z

    .line 1404
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->cleanupLayout()V

    .line 1406
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gy;->removeView(Landroid/view/View;)V

    .line 1407
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->stopLoading()V

    .line 1408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->onPause()V

    .line 1411
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->destroy()V

    .line 1412
    iput-object v4, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    .line 1413
    invoke-direct {p0}, Lcom/flurry/sdk/gy;->getWebViewFactory()Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->a()V

    .line 1414
    iput-object v4, p0, Lcom/flurry/sdk/gy;->k:Lcom/flurry/sdk/hp;

    .line 1416
    :cond_5
    return-void
.end method

.method public onActivityPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_0

    .line 1353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->onPause()V

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->onActivityPause()V

    .line 1361
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gy;->e:Z

    .line 1362
    return-void
.end method

.method public onActivityResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1330
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.AdViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gy;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 1332
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    if-eqz v0, :cond_0

    .line 1333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1334
    iput-boolean v3, p0, Lcom/flurry/sdk/gy;->e:Z

    .line 1335
    iget-object v0, p0, Lcom/flurry/sdk/gy;->f:Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->onResume()V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->onActivityResume()V

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_2

    .line 1344
    iput-boolean v3, p0, Lcom/flurry/sdk/gy;->e:Z

    .line 1346
    :cond_2
    return-void
.end method

.method public onActivityStop()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gy;->y:Landroid/app/AlertDialog;

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/flurry/sdk/gy;->d:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->onActivityStop()V

    .line 1374
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 1375
    return-void
.end method

.method public onBackKey()Z
    .locals 4

    .prologue
    .line 185
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected onViewLoadTimeout()V
    .locals 6

    .prologue
    .line 847
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 848
    const-string v0, "errorCode"

    sget-object v2, Lcom/flurry/sdk/bb;->b:Lcom/flurry/sdk/bb;

    .line 2040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 848
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 850
    return-void
.end method

.method public setMraidButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    if-eqz v0, :cond_0

    .line 1569
    if-eqz p1, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cm;->setVisibility(I)V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy;->z:Lcom/flurry/sdk/cm;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cm;->setVisibility(I)V

    goto :goto_0
.end method
