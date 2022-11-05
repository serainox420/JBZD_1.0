.class Landroid/support/v7/media/n$a;
.super Landroid/support/v7/media/n;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/n$a$a;
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 130
    invoke-static {p1}, Landroid/support/v7/media/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/n$a;->d:Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/n$a;->d:Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/n$a;->e:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Landroid/support/v7/media/n$a;->d:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/n$a;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/media/n$c;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/n$c;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->c(Ljava/lang/Object;I)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/n$c;->b:I

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->d(Ljava/lang/Object;I)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/n$c;->c:I

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->e(Ljava/lang/Object;I)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/n$c;->d:I

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->b(Ljava/lang/Object;I)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/n$c;->e:I

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;I)V

    .line 150
    iget-boolean v0, p0, Landroid/support/v7/media/n$a;->g:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/n$a;->g:Z

    .line 152
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    new-instance v1, Landroid/support/v7/media/n$a$a;

    invoke-direct {v1, p0}, Landroid/support/v7/media/n$a$a;-><init>(Landroid/support/v7/media/n$a;)V

    .line 153
    invoke-static {v1}, Landroid/support/v7/media/i;->a(Landroid/support/v7/media/i$g;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/media/n$a;->f:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/n$a;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method
