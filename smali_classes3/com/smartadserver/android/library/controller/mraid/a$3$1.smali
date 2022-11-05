.class Lcom/smartadserver/android/library/controller/mraid/a$3$1;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a$3;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a$3;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$3$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$3$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$3;->e:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 398
    return-void
.end method
