.class Lcom/smartadserver/android/library/ui/a$10;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->setViewable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$10;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$10;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->j(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 1752
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$10;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->a()V

    .line 1753
    return-void
.end method
