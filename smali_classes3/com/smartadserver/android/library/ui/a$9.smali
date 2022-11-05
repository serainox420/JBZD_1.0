.class Lcom/smartadserver/android/library/ui/a$9;
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
    .line 1730
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$9;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$9;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->b()V

    .line 1735
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$9;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->j(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 1736
    return-void
.end method
