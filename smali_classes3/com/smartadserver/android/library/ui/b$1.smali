.class Lcom/smartadserver/android/library/ui/b$1;
.super Ljava/lang/Object;
.source "SASVideo360ResetButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/b;->setAngle(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/smartadserver/android/library/ui/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/b;F)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/b$1;->b:Lcom/smartadserver/android/library/ui/b;

    iput p2, p0, Lcom/smartadserver/android/library/ui/b$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b$1;->b:Lcom/smartadserver/android/library/ui/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/b;->a(Lcom/smartadserver/android/library/ui/b;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/ui/b$1;->a:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 82
    return-void
.end method
