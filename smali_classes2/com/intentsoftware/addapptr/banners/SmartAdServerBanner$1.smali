.class Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;
.super Ljava/lang/Object;
.source "SmartAdServerBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$000(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$102(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;J)J

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$200(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/SASBannerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
