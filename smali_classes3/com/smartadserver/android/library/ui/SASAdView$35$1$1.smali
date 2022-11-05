.class Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$35$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASAdView$35$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$35$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->c:Lcom/smartadserver/android/library/ui/SASAdView$35$1;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->c:Lcom/smartadserver/android/library/ui/SASAdView$35$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->b:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return-void
.end method
