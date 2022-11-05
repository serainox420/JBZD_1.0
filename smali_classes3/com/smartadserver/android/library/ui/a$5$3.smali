.class Lcom/smartadserver/android/library/ui/a$5$3;
.super Lcom/smartadserver/android/library/ui/a/b;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$5;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$5;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$5$3;->a:Lcom/smartadserver/android/library/ui/a$5;

    invoke-direct {p0, p2}, Lcom/smartadserver/android/library/ui/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$3;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->k(Lcom/smartadserver/android/library/ui/a;)V

    .line 1468
    return-void
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$3;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Z)V

    .line 1473
    const/4 v0, 0x1

    return v0
.end method
