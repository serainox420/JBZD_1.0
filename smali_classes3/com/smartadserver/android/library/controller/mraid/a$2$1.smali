.class Lcom/smartadserver/android/library/controller/mraid/a$2$1;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a$2;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 320
    return-void
.end method
