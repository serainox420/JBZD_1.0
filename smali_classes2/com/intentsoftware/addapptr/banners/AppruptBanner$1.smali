.class Lcom/intentsoftware/addapptr/banners/AppruptBanner$1;
.super Ljava/lang/Object;
.source "AppruptBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AppruptBanner;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;

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
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->access$002(Lcom/intentsoftware/addapptr/banners/AppruptBanner;J)J

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
