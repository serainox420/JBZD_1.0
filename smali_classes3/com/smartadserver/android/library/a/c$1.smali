.class final Lcom/smartadserver/android/library/a/c$1;
.super Ljava/lang/Object;
.source "SASHttpRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartadserver/android/library/a/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartadserver/android/library/a/c$1$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/a/c$1$1;-><init>(Lcom/smartadserver/android/library/a/c$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method
