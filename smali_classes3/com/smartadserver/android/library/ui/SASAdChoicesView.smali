.class public Lcom/smartadserver/android/library/ui/SASAdChoicesView;
.super Landroid/widget/ImageView;
.source "SASAdChoicesView.java"


# instance fields
.field private a:Lcom/smartadserver/android/library/model/SASNativeAdElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->b()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdChoicesView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->F:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a()V

    .line 55
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "http://smartadserver.fr/societe/politique-de-confidentialite/"

    .line 77
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v1}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->m()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 91
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/smartadserver/android/library/ui/SASAdChoicesView$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdChoicesView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public setNativeAdElement(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    .line 68
    return-void
.end method
