.class public Lcom/smartadserver/android/library/controller/mraid/a;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/smartadserver/android/library/ui/SASAdView;

.field private f:Lcom/smartadserver/android/library/controller/mraid/b;

.field private g:Lcom/smartadserver/android/library/controller/mraid/d;

.field private h:Lcom/smartadserver/android/library/controller/mraid/c;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    .line 34
    const-string v0, "<script src=\"mraid.js\"></script>"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    .line 35
    const-string v0, "https://ns.sascdn.com/diff/templates/js/mobile/mraid/bridges/android-sdk-mraid-bridge-2.3.js"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->b:Ljava/lang/String;

    .line 38
    const-string v0, "mraidbridge"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:Z

    .line 59
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 60
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->g(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    .line 64
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 66
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    .line 69
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string v0, "\'mraid.js\'"

    const-string v1, "\"mraid.js\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<HTML"

    const-string v2, "<html"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</HEAD>"

    const-string v2, "</head>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<BODY"

    const-string v2, "<body"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v0, "<html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "<!DOCTYPE html><html><head><meta name=\"viewport\" content=\"initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\"/></head><body style=\"text-align:center;margin:0\">"

    .line 93
    const-string v2, "\"mraid.js\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const-string v0, "\"mraid.js\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    const-string v0, "</head>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "</head>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</head>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "<body"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<head>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</head><body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 421
    const-string v0, "resized"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "resized"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v2

    .line 423
    :goto_0
    if-eqz p2, :cond_0

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    .line 425
    :goto_1
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_4

    .line 426
    :cond_1
    sget-object v3, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setState(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from thread:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "interstitial"

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 430
    if-eqz v3, :cond_2

    const-string v3, "expanded"

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "default"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 432
    :cond_3
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    .line 434
    if-eqz v1, :cond_4

    .line 435
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:Z

    .line 436
    if-eqz v0, :cond_4

    .line 437
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a$4;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/controller/mraid/a$4;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;)V

    .line 444
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 445
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 452
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v3, v1

    .line 421
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 423
    goto :goto_1

    .line 447
    :cond_7
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "<script>function setClickableAreasOnView(){function t(e){var t=[];var n=document.getElementsByTagName(\"*\");for(var r=0;r<n.length;r++){if(n[r].getAttribute(e)){t.push(n[r])}}return t}var e=document.getElementsByTagName(\"a\");for(i=0;i<e.length;i++){if(e[i].getAttribute(\"data-sas-touch-mode\")==null){e[i].setAttribute(\"data-sas-touch-mode\",\"1\")}}var e=t(\"data-sas-touch-mode\");var n=[];for(i=0;i<e.length;i++){var r=e[i].getBoundingClientRect();n.push(\"\"+e[i].getAttribute(\"data-sas-touch-mode\")+\",\"+Math.round(r.left)+\" \"+Math.round(r.top)+\" \"+Math.round(r.left+r.width)+\" \"+Math.round(r.top+r.height))}mraidbridge.setClickableAreas(n.join(\";\"));window.setTimeout(setClickableAreasOnView,1000)}window.setTimeout(setClickableAreasOnView,100);</script>"

    .line 111
    const-string v0, "</head>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "<body"

    const-string v1, "<head></head><body"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_0
    const-string v0, "</head>"

    const-string v1, "<script>function setClickableAreasOnView(){function t(e){var t=[];var n=document.getElementsByTagName(\"*\");for(var r=0;r<n.length;r++){if(n[r].getAttribute(e)){t.push(n[r])}}return t}var e=document.getElementsByTagName(\"a\");for(i=0;i<e.length;i++){if(e[i].getAttribute(\"data-sas-touch-mode\")==null){e[i].setAttribute(\"data-sas-touch-mode\",\"1\")}}var e=t(\"data-sas-touch-mode\");var n=[];for(i=0;i<e.length;i++){var r=e[i].getBoundingClientRect();n.push(\"\"+e[i].getAttribute(\"data-sas-touch-mode\")+\",\"+Math.round(r.left)+\" \"+Math.round(r.top)+\" \"+Math.round(r.left+r.width)+\" \"+Math.round(r.top+r.height))}mraidbridge.setClickableAreas(n.join(\";\"));window.setTimeout(setClickableAreasOnView,1000)}window.setTimeout(setClickableAreasOnView,100);</script></head>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Lcom/smartadserver/android/library/controller/mraid/c;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/d;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->h()V

    .line 180
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    iput v1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 181
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    iput v1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 182
    return-void
.end method

.method private h()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    :goto_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    .line 201
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->r:I

    .line 204
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewMaxSize()[I

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    .line 208
    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    .line 215
    :goto_1
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",screenW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",screenH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .line 198
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 211
    :cond_1
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    .line 212
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->r:I

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 674
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 676
    :try_start_0
    const-string v1, "x"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 677
    const-string v1, "y"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 678
    const-string v1, "width"

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 679
    const-string v1, "height"

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 680
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    const-string v0, ""

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/b;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    .line 74
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/d;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    .line 75
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/controller/mraid/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Lcom/smartadserver/android/library/controller/mraid/c;

    .line 76
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->g()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:Z

    .line 78
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 486
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    if-eq p1, v0, :cond_1

    .line 487
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChange(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    .line 491
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->g()V

    .line 492
    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$5;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$5;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_0
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireOrientationChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 508
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireSizeChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p2

    iget v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 334
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if (typeof mraid != \'undefined\') mraid.fireErrorEvent(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 336
    return-void

    .line 334
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->getPlacementType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inline"

    if-ne v1, v2, :cond_1

    .line 530
    :cond_0
    const/4 v0, 0x1

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 548
    :cond_2
    :goto_0
    return-void

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->o()V

    .line 539
    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$6;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$6;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 167
    :cond_0
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Z

    if-eq v0, p1, :cond_0

    .line 702
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iput-boolean p1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Z

    .line 704
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireViewableChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireViewableChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 709
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    const-string v0, "loading"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:Z

    if-eqz v0, :cond_0

    .line 462
    iput-boolean v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->n:Z

    .line 463
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (typeof mraid != \'undefined\') mraid.fireStateChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.fireStateChangeEvent(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v0, "default"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0

    .line 470
    :cond_2
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0

    .line 472
    :cond_3
    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(I)V

    goto :goto_0
.end method

.method public callJS(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public close()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->d()Z

    move-result v1

    .line 224
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 225
    :goto_0
    const-string v2, "expanded"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "resized"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 226
    :cond_0
    const-string v0, "default"

    invoke-direct {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 228
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a()V

    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->o()V

    .line 239
    :goto_1
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 235
    const-string v0, "hidden"

    invoke-direct {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c()V

    goto :goto_1
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getClickPixelUrl()Ljava/lang/String;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 781
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 784
    const-string v1, "start"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 785
    const-string v1, "end"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 786
    const-string v1, "description"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    const-string v6, "summary"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 788
    const-string v7, "location"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 789
    const-string v8, "recurrence"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 790
    const-string v9, "transparency"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 792
    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    sub-long v10, v4, v2

    const-wide/32 v12, 0x5265c00

    cmp-long v0, v10, v12

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 794
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v10, v2, v10

    if-nez v10, :cond_3

    .line 796
    const-string v0, "Can not create calendar event: invalid start date"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_1
    return-void

    .line 792
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 801
    :cond_3
    cmp-long v10, v2, v4

    if-ltz v10, :cond_4

    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_4

    .line 803
    const-string v0, "Can not create calendar event: start date is posterior to end date"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 844
    :catch_0
    move-exception v0

    .line 846
    const-string v0, "Can not create calendar event: incorrect JSON format"

    const-string v1, "createCalendarEvent"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 808
    :cond_4
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.EDIT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    const-string v11, "vnd.android.cursor.item/event"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v11, "beginTime"

    invoke-virtual {v10, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 812
    if-eqz v0, :cond_6

    .line 813
    const-string v0, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    :goto_2
    const-string v0, "title"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v0, "description"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string v0, "eventLocation"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v0, "opaque"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 824
    const-string v0, "availability"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    :goto_3
    if-eqz v8, :cond_5

    .line 831
    invoke-static {v8}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 833
    const-string v1, "rrule"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 839
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 815
    :cond_6
    const-string v0, "allDay"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 816
    const-string v0, "endTime"

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_2

    .line 826
    :cond_7
    const-string v0, "availability"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 841
    :cond_8
    const-string v0, "Can not launch calendar activity"

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public createEvent(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 729
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getClickPixelUrl()Ljava/lang/String;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 731
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    invoke-virtual {v3, v0, v1}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 735
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v0, p5, v4

    if-nez v0, :cond_3

    move v0, v1

    .line 740
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v4, "beginTime"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 744
    if-eqz v0, :cond_1

    .line 745
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    :goto_1
    const-string v0, "title"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v0, "description"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 763
    :goto_2
    return-void

    .line 747
    :cond_1
    const-string v0, "allDay"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    const-string v0, "endTime"

    invoke-virtual {v3, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 761
    :cond_2
    const-string v0, "Can not launch calendar activity"

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (typeof mraid != \'undefined\') mraid.fireLocationChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public executeJSFromNative(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 910
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    const-string v1, "executeJS"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public expand()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand():url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$2;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/controller/mraid/a$2;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public getBase64Screenshot(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-static {v1, p1}, Lcom/smartadserver/android/library/g/c;->a(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 655
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v1

    .line 657
    iget v2, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 658
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aget v1, v1, v4

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 659
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 664
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v1

    .line 666
    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget v3, v1, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 667
    iget v2, v0, Landroid/graphics/Rect;->right:I

    aget v3, v1, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 668
    iget v2, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v5

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 669
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aget v1, v1, v5

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 670
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandPolicy()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandPolicy()I

    move-result v0

    .line 690
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpandPolicy return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return v0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 890
    const/4 v0, 0x0

    .line 891
    if-eqz v1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{lat:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lon:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "acc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_0
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-object v0
.end method

.method public getMaxSizeString()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 614
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 615
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 616
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    const-string v0, ""

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->g(Landroid/content/Context;)I

    move-result v0

    .line 866
    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    if-eq v0, v1, :cond_0

    .line 868
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    .line 870
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrientation() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->k:I

    return v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    .line 856
    :goto_0
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlacementType() return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-object v0

    .line 855
    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getResizeProperties()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSizeString()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 633
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 635
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 636
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->r:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 637
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    const-string v0, ""

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState() return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isLandscapeDevice()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isViewable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->i:Z

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 719
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->e:Lcom/smartadserver/android/library/a/c;

    const-string v1, "proxy"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 721
    return-void
.end method

.method public resize()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 343
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    const-string v1, "resize method called"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "Can not resize a container in EXPANDED state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:Z

    if-nez v0, :cond_2

    .line 360
    const-string v0, "Can not resize a container with no resize properties set first"

    const-string v1, "Call mraid.setResizeProperties(properties) first"

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v2, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v3, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    .line 371
    :goto_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 372
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 374
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/controller/mraid/a$3;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;IIII)V

    invoke-virtual {v6, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_1

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    iget v0, v0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/a;->m:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    goto :goto_2
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMessageHandler()Lcom/smartadserver/android/library/ui/SASAdView$b;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$b;->a(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setClickableAreas(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 902
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickableAreas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->setClickableAreas(Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method public setCloseOnClick(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->setCloseOnclick(Z)V

    .line 571
    return-void
.end method

.method public setEnableStateChangeEvent(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$1;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/controller/mraid/a$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a;Z)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public setExpandPolicy(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 696
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView;->setExpandPolicy(I)V

    .line 698
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 513
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V

    .line 523
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting expand properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExpandUseCustomCloseProperty(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->f:Lcom/smartadserver/android/library/controller/mraid/b;

    iput-boolean p1, v0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 561
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V

    .line 562
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 596
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->h:Lcom/smartadserver/android/library/controller/mraid/c;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting orientation properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 576
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizeProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->g:Lcom/smartadserver/android/library/controller/mraid/d;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/mraid/d;->a(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a;->l:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    sget-object v0, Lcom/smartadserver/android/library/controller/mraid/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail setting resize properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 457
    return-void
.end method
