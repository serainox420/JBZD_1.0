.class Lcom/smartadserver/android/library/ui/a$23;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 652
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$23;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 655
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$23;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->b()V

    .line 658
    :cond_0
    return-void
.end method
