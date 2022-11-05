.class Lcom/smartadserver/android/library/ui/a$8;
.super Ljava/lang/Thread;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Z

.field final synthetic d:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/a$8;->b:Landroid/widget/ImageView;

    iput-boolean p4, p0, Lcom/smartadserver/android/library/ui/a$8;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1684
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$8;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/smartadserver/android/library/ui/a$8$1;

    invoke-direct {v2, p0, v0}, Lcom/smartadserver/android/library/ui/a$8$1;-><init>(Lcom/smartadserver/android/library/ui/a$8;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1697
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->K(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$8;->c:Z

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getBackgroundImpressionUrl()Ljava/lang/String;

    move-result-object v0

    .line 1699
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$8;->d:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2, v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/a;->i(Lcom/smartadserver/android/library/ui/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
