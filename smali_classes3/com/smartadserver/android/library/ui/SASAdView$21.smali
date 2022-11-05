.class Lcom/smartadserver/android/library/ui/SASAdView$21;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->d()V
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
    .line 3110
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$21;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$21;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/e/a/c;->c()V

    .line 3114
    return-void
.end method
