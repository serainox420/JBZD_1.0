.class Lcom/smartadserver/android/library/ui/SASAdView$23;
.super Ljava/util/TimerTask;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->b(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZ)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->a:I

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->b:Ljava/lang/String;

    iput p4, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->c:I

    iput-object p5, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->e:Lcom/smartadserver/android/library/ui/SASAdView$a;

    iput p7, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->f:I

    iput-boolean p8, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->g:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$23;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$23$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$23$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$23;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 867
    return-void
.end method
