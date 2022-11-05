.class public Lpl/jbzd/a/b;
.super Ljava/lang/Object;
.source "AdsManager.java"

# interfaces
.implements Lpl/jbzd/a/a;


# static fields
.field private static a:Lpl/jbzd/a/b;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseBooleanArray;

.field private e:Landroid/util/SparseBooleanArray;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lpl/jbzd/a/b;->a:Lpl/jbzd/a/b;

    return-void
.end method

.method private constructor <init>(Lpl/jbzd/app/MyApplication;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v3, p0, Lpl/jbzd/a/b;->b:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lpl/jbzd/a/b;->d:Landroid/util/SparseBooleanArray;

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    .line 33
    iput v1, p0, Lpl/jbzd/a/b;->f:I

    .line 34
    iput v1, p0, Lpl/jbzd/a/b;->g:I

    .line 35
    iput v1, p0, Lpl/jbzd/a/b;->h:I

    .line 53
    invoke-virtual {p1}, Lpl/jbzd/app/MyApplication;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lpl/jbzd/a/b;->h:I

    iput v0, p0, Lpl/jbzd/a/b;->g:I

    iput v0, p0, Lpl/jbzd/a/b;->f:I

    iput v0, p0, Lpl/jbzd/a/b;->b:I

    .line 56
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    iget-object v2, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59
    iget-object v2, p0, Lpl/jbzd/a/b;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, p0}, Lpl/jbzd/app/MyApplication;->a(Lpl/jbzd/a/a;)V

    .line 63
    return-void
.end method

.method public static a()Lpl/jbzd/a/b;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lpl/jbzd/a/b;->a:Lpl/jbzd/a/b;

    return-object v0
.end method

.method public static a(Lpl/jbzd/app/MyApplication;)Lpl/jbzd/a/b;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lpl/jbzd/a/b;->a:Lpl/jbzd/a/b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lpl/jbzd/a/b;

    invoke-direct {v0, p0}, Lpl/jbzd/a/b;-><init>(Lpl/jbzd/app/MyApplication;)V

    sput-object v0, Lpl/jbzd/a/b;->a:Lpl/jbzd/a/b;

    .line 43
    :cond_0
    sget-object v0, Lpl/jbzd/a/b;->a:Lpl/jbzd/a/b;

    return-object v0
.end method

.method private c(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 157
    if-ltz p1, :cond_2

    iget v0, p0, Lpl/jbzd/a/b;->b:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->getPlacementView(I)Landroid/view/View;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :cond_1
    return-object v1

    .line 157
    :cond_2
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lpl/jbzd/a/b;->b:I

    if-ge v1, v0, :cond_0

    .line 189
    iget-object v2, p0, Lpl/jbzd/a/b;->d:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lpl/jbzd/a/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    return-void

    .line 187
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 175
    if-ltz p1, :cond_0

    iget v0, p0, Lpl/jbzd/a/b;->b:I

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v2, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 178
    invoke-static {p1}, Lcom/intentsoftware/addapptr/AATKit;->reloadPlacement(I)Z

    move v0, v1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lpl/jbzd/a/b;->d:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 199
    iget-object v0, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 200
    invoke-direct {p0}, Lpl/jbzd/a/b;->c()V

    .line 201
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl/jbzd/a/b;->d(I)Z

    .line 68
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lpl/jbzd/a/b;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->stopPlacementAutoReload(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lpl/jbzd/a/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 134
    iget v0, p0, Lpl/jbzd/a/b;->f:I

    iput v0, p0, Lpl/jbzd/a/b;->g:I

    iput v0, p0, Lpl/jbzd/a/b;->h:I

    .line 142
    :goto_1
    iget v0, p0, Lpl/jbzd/a/b;->h:I

    if-ltz v0, :cond_1

    iget v0, p0, Lpl/jbzd/a/b;->h:I

    iget v1, p0, Lpl/jbzd/a/b;->b:I

    if-ge v0, v1, :cond_1

    .line 143
    iget v0, p0, Lpl/jbzd/a/b;->h:I

    invoke-direct {p0, v0}, Lpl/jbzd/a/b;->d(I)Z

    .line 147
    :cond_1
    iget v0, p0, Lpl/jbzd/a/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/jbzd/a/b;->f:I

    iget v1, p0, Lpl/jbzd/a/b;->b:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lpl/jbzd/a/b;->f:I

    if-gez v0, :cond_3

    .line 148
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/a/b;->f:I

    .line 151
    :cond_3
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    iget v1, p0, Lpl/jbzd/a/b;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/AATKit;->startPlacementAutoReload(II)V

    .line 152
    iget v0, p0, Lpl/jbzd/a/b;->f:I

    invoke-direct {p0, v0}, Lpl/jbzd/a/b;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 138
    :cond_4
    iget v0, p0, Lpl/jbzd/a/b;->g:I

    iput v0, p0, Lpl/jbzd/a/b;->h:I

    .line 139
    iget v0, p0, Lpl/jbzd/a/b;->f:I

    iput v0, p0, Lpl/jbzd/a/b;->g:I

    goto :goto_1
.end method

.method public b(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lpl/jbzd/a/b;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v1, v0

    .line 208
    :goto_0
    iget v0, p0, Lpl/jbzd/a/b;->b:I

    if-ge v1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 212
    invoke-direct {p0, v1}, Lpl/jbzd/a/b;->d(I)Z

    .line 216
    :cond_0
    return-void

    .line 208
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 72
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/intentsoftware/addapptr/AATKit;->onActivityResume(Landroid/app/Activity;)V

    .line 79
    iget v0, p0, Lpl/jbzd/a/b;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 81
    const/4 v0, -0x1

    .line 83
    iget v1, p0, Lpl/jbzd/a/b;->f:I

    if-ltz v1, :cond_1

    iget v1, p0, Lpl/jbzd/a/b;->f:I

    iget v2, p0, Lpl/jbzd/a/b;->b:I

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    iget v1, p0, Lpl/jbzd/a/b;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    invoke-static {v0, v3}, Lcom/intentsoftware/addapptr/AATKit;->startPlacementAutoReload(II)V

    :cond_1
    move v1, v0

    .line 89
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    if-eq v0, v1, :cond_2

    .line 92
    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->stopPlacementAutoReload(I)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Lcom/intentsoftware/addapptr/AATKit;->startPlacementAutoReload(II)V

    .line 99
    :cond_4
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lpl/jbzd/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    invoke-static {v0}, Lcom/intentsoftware/addapptr/AATKit;->stopPlacementAutoReload(I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/intentsoftware/addapptr/AATKit;->onActivityPause(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
