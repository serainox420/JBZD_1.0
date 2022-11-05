.class Lcom/smartadserver/android/library/ui/a$12;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;)V
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
    .line 621
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$12;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$12;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Z)V

    .line 625
    return-void
.end method
