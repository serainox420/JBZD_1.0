.class final Landroid/support/v7/media/g$d$b;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$d;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat;

.field private c:I

.field private d:I

.field private e:Landroid/support/v4/media/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/g$d;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .prologue
    .line 2754
    iput-object p1, p0, Landroid/support/v7/media/g$d$b;->a:Landroid/support/v7/media/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2755
    iput-object p2, p0, Landroid/support/v7/media/g$d$b;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2756
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/support/v7/media/g$d$b;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/g$d$b;->a:Landroid/support/v7/media/g$d;

    iget-object v1, v1, Landroid/support/v7/media/g$d;->c:Landroid/support/v7/media/n$c;

    iget v1, v1, Landroid/support/v7/media/n$c;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->b(I)V

    .line 2797
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/g$d$b;->e:Landroid/support/v4/media/f;

    .line 2798
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 2760
    iget-object v0, p0, Landroid/support/v7/media/g$d$b;->e:Landroid/support/v4/media/f;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/media/g$d$b;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/media/g$d$b;->d:I

    if-ne p2, v0, :cond_0

    .line 2763
    iget-object v0, p0, Landroid/support/v7/media/g$d$b;->e:Landroid/support/v4/media/f;

    invoke-virtual {v0, p3}, Landroid/support/v4/media/f;->a(I)V

    .line 2793
    :goto_0
    return-void

    .line 2766
    :cond_0
    new-instance v0, Landroid/support/v7/media/g$d$b$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v7/media/g$d$b$1;-><init>(Landroid/support/v7/media/g$d$b;III)V

    iput-object v0, p0, Landroid/support/v7/media/g$d$b;->e:Landroid/support/v4/media/f;

    .line 2791
    iget-object v0, p0, Landroid/support/v7/media/g$d$b;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/g$d$b;->e:Landroid/support/v4/media/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/f;)V

    goto :goto_0
.end method

.method public b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Landroid/support/v7/media/g$d$b;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
