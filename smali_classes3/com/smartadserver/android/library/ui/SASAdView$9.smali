.class Lcom/smartadserver/android/library/ui/SASAdView$9;
.super Ljava/util/TimerTask;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 2378
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$9;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$9;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->t(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 2382
    return-void
.end method
