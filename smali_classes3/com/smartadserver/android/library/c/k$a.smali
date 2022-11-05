.class Lcom/smartadserver/android/library/c/k$a;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/InlineAd$InlineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/k;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/k;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/k;Lcom/smartadserver/android/library/c/k$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/k$a;-><init>(Lcom/smartadserver/android/library/c/k;)V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onClicked"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 63
    return-void
.end method

.method public onCollapsed(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onCollapsed"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onExpanded(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onCollapsed"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V
    .locals 3

    .prologue
    .line 79
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onRequestFailed"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/InlineAd$InlineErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/InlineAd$InlineErrorStatus;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial inline ad onRequestSucceeded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/k$a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/k$a$1;-><init>(Lcom/smartadserver/android/library/c/k$a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public onResize(Lcom/millennialmedia/InlineAd;II)V
    .locals 3

    .prologue
    .line 101
    const-string v0, "SASMillennialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial inline ad onResize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onResized(Lcom/millennialmedia/InlineAd;IIZ)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "SASMillennialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial inline ad onResized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$a;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "resized"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 108
    return-void
.end method
