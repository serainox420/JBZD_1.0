.class Lcom/smartadserver/android/library/a/c$2;
.super Landroid/content/BroadcastReceiver;
.source "SASHttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/c;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a/c;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/smartadserver/android/library/a/c$2;->a:Lcom/smartadserver/android/library/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$2;->a:Lcom/smartadserver/android/library/a/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Lcom/smartadserver/android/library/a/c;)V

    .line 163
    return-void
.end method
