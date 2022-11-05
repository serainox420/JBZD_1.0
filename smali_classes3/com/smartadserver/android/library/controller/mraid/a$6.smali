.class Lcom/smartadserver/android/library/controller/mraid/a$6;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$6;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$6;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 544
    return-void
.end method
