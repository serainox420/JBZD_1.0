.class public Landroid/support/v7/app/a;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/a$c;,
        Landroid/support/v7/app/a$g;,
        Landroid/support/v7/app/a$f;,
        Landroid/support/v7/app/a$e;,
        Landroid/support/v7/app/a$d;,
        Landroid/support/v7/app/a$a;,
        Landroid/support/v7/app/a$b;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/support/v7/app/a$a;

.field private final d:Landroid/support/v4/widget/DrawerLayout;

.field private e:Landroid/support/v7/b/a/b;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private final h:I

.field private final i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 7

    .prologue
    .line 185
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/a;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/b/a/b;II)V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/b/a/b;II)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v0, p0, Landroid/support/v7/app/a;->f:Z

    .line 123
    iput-boolean v0, p0, Landroid/support/v7/app/a;->a:Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/a;->j:Z

    .line 197
    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Landroid/support/v7/app/a$g;

    invoke-direct {v0, p2}, Landroid/support/v7/app/a$g;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    .line 199
    new-instance v0, Landroid/support/v7/app/a$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$1;-><init>(Landroid/support/v7/app/a;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    .line 222
    iput p5, p0, Landroid/support/v7/app/a;->h:I

    .line 223
    iput p6, p0, Landroid/support/v7/app/a;->i:I

    .line 224
    if-nez p4, :cond_5

    .line 225
    new-instance v0, Landroid/support/v7/b/a/b;

    iget-object v1, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    invoke-interface {v1}, Landroid/support/v7/app/a$a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/b/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    .line 230
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/a;->g:Landroid/graphics/drawable/Drawable;

    .line 231
    return-void

    .line 209
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/a$b;

    if-eqz v0, :cond_1

    .line 210
    check-cast p1, Landroid/support/v7/app/a$b;

    invoke-interface {p1}, Landroid/support/v7/app/a$b;->getDrawerToggleDelegate()Landroid/support/v7/app/a$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 211
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 212
    new-instance v0, Landroid/support/v7/app/a$f;

    invoke-direct {v0, p1}, Landroid/support/v7/app/a$f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 213
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 214
    new-instance v0, Landroid/support/v7/app/a$e;

    invoke-direct {v0, p1}, Landroid/support/v7/app/a$e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 215
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 216
    new-instance v0, Landroid/support/v7/app/a$d;

    invoke-direct {v0, p1}, Landroid/support/v7/app/a$d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 218
    :cond_4
    new-instance v0, Landroid/support/v7/app/a$c;

    invoke-direct {v0, p1}, Landroid/support/v7/app/a$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    goto :goto_0

    .line 227
    :cond_5
    iput-object p4, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    goto :goto_1
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 514
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/b/a/b;->b(Z)V

    .line 519
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a/b;->c(F)V

    .line 520
    return-void

    .line 516
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/b/a/b;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    .line 248
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/a;->a:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    .line 250
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/app/a;->i:I

    .line 249
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 253
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    goto :goto_0

    .line 250
    :cond_2
    iget v0, p0, Landroid/support/v7/app/a;->h:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/support/v7/app/a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    invoke-interface {v0}, Landroid/support/v7/app/a$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/a;->j:Z

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/a$a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 503
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 436
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    .line 437
    iget-boolean v0, p0, Landroid/support/v7/app/a;->a:Z

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Landroid/support/v7/app/a;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a;->b(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-boolean v0, p0, Landroid/support/v7/app/a;->f:Z

    if-eqz v0, :cond_0

    .line 421
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/a;->a(F)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/support/v7/app/a;->a:Z

    if-eq p1, v0, :cond_0

    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v1, p0, Landroid/support/v7/app/a;->e:Landroid/support/v7/b/a/b;

    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    .line 364
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/app/a;->i:I

    .line 363
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 369
    :goto_1
    iput-boolean p1, p0, Landroid/support/v7/app/a;->a:Z

    .line 371
    :cond_0
    return-void

    .line 364
    :cond_1
    iget v0, p0, Landroid/support/v7/app/a;->h:I

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/a;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 289
    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    .line 290
    iget-object v1, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a$a;->a(I)V

    .line 507
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    .line 452
    iget-boolean v0, p0, Landroid/support/v7/app/a;->a:Z

    if-eqz v0, :cond_0

    .line 453
    iget v0, p0, Landroid/support/v7/app/a;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a;->b(I)V

    .line 455
    :cond_0
    return-void
.end method

.method c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/a$a;

    invoke-interface {v0}, Landroid/support/v7/app/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
