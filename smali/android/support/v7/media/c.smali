.class public abstract Landroid/support/v7/media/c;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/c$b;,
        Landroid/support/v7/media/c$a;,
        Landroid/support/v7/media/c$d;,
        Landroid/support/v7/media/c$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/media/c$c;

.field private final c:Landroid/support/v7/media/c$b;

.field private d:Landroid/support/v7/media/c$a;

.field private e:Landroid/support/v7/media/b;

.field private f:Z

.field private g:Landroid/support/v7/media/d;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v7/media/c$c;)V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/support/v7/media/c$b;

    invoke-direct {v0, p0}, Landroid/support/v7/media/c$b;-><init>(Landroid/support/v7/media/c;)V

    iput-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/c$b;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/c;->a:Landroid/content/Context;

    .line 91
    if-nez p2, :cond_1

    .line 92
    new-instance v0, Landroid/support/v7/media/c$c;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/support/v7/media/c$c;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Landroid/support/v7/media/c;->b:Landroid/support/v7/media/c$c;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object p2, p0, Landroid/support/v7/media/c;->b:Landroid/support/v7/media/c$c;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/media/c;->a(Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v7/media/b;)V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 153
    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    .line 154
    invoke-virtual {v0, p1}, Landroid/support/v7/media/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    .line 159
    iget-boolean v0, p0, Landroid/support/v7/media/c;->f:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/c;->f:Z

    .line 161
    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/c$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/media/c$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/media/c$a;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 126
    iput-object p1, p0, Landroid/support/v7/media/c;->d:Landroid/support/v7/media/c$a;

    .line 127
    return-void
.end method

.method public final a(Landroid/support/v7/media/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 227
    iget-object v0, p0, Landroid/support/v7/media/c;->g:Landroid/support/v7/media/d;

    if-eq v0, p1, :cond_0

    .line 228
    iput-object p1, p0, Landroid/support/v7/media/c;->g:Landroid/support/v7/media/d;

    .line 229
    iget-boolean v0, p0, Landroid/support/v7/media/c;->h:Z

    if-nez v0, :cond_0

    .line 230
    iput-boolean v1, p0, Landroid/support/v7/media/c;->h:Z

    .line 231
    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/c$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/c$b;->sendEmptyMessage(I)Z

    .line 234
    :cond_0
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/c$b;

    return-object v0
.end method

.method public b(Landroid/support/v7/media/b;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final c()Landroid/support/v7/media/c$c;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Landroid/support/v7/media/c$c;

    return-object v0
.end method

.method public final d()Landroid/support/v7/media/b;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    return-object v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/c;->f:Z

    .line 167
    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/b;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/c;->b(Landroid/support/v7/media/b;)V

    .line 168
    return-void
.end method

.method public final f()Landroid/support/v7/media/d;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/media/c;->g:Landroid/support/v7/media/d;

    return-object v0
.end method

.method g()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/c;->h:Z

    .line 239
    iget-object v0, p0, Landroid/support/v7/media/c;->d:Landroid/support/v7/media/c$a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v7/media/c;->d:Landroid/support/v7/media/c$a;

    iget-object v1, p0, Landroid/support/v7/media/c;->g:Landroid/support/v7/media/d;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/c$a;->a(Landroid/support/v7/media/c;Landroid/support/v7/media/d;)V

    .line 242
    :cond_0
    return-void
.end method
