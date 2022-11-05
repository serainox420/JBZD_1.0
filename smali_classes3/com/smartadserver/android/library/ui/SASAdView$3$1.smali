.class Lcom/smartadserver/android/library/ui/SASAdView$3$1;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView$3;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$3;)V
    .locals 0

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$3$1;->a:Lcom/smartadserver/android/library/ui/SASAdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 2

    .prologue
    .line 2141
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adLoadingCompleted from livepreview"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return-void
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 2146
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adLoadingFailed from livepreview"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    return-void
.end method
