.class public Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;
.super Landroid/widget/RelativeLayout;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizeContainer"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    .line 110
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 158
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 160
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 165
    :cond_0
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 171
    :cond_1
    :goto_0
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 177
    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 180
    return-object v0

    .line 167
    :cond_3
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    .line 189
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_1

    .line 190
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 195
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    .line 196
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 201
    :cond_0
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    return-void

    .line 191
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_3

    .line 192
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 197
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_0

    .line 198
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xb

    const/16 v3, 0xc

    .line 116
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 130
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    const-string v1, "top-right"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 151
    return-void

    .line 135
    :cond_2
    const-string v1, "top-center"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v1, "bottom-left"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 139
    :cond_4
    const-string v1, "bottom-center"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v1, "bottom-right"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 145
    :cond_6
    const-string v1, "center"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V

    .line 302
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize must be called on the UI thread"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 216
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 217
    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 218
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 219
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->a:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 220
    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 226
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->c:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 227
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->d:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 230
    iget-boolean v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->f:Z

    if-nez v3, :cond_2

    .line 231
    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 236
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resized view would not appear on screen"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->a:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 223
    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 243
    :cond_2
    iget-object v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 245
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close area would not appear on screen"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v1

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->c:I

    iget v4, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->d:I

    invoke-interface {v1, v3, v4}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onResizing(II)V

    .line 253
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v1

    if-nez v1, :cond_5

    .line 254
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/SizableStateManager;->saveDefaultState(Landroid/view/View;)V

    .line 255
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 256
    if-nez v1, :cond_4

    .line 257
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to resize to root view"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_4
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 263
    invoke-static {v1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->b(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    if-eqz v0, :cond_5

    .line 268
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->c:I

    iget v3, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->d:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {p0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 278
    iget v1, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    iget v1, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->setTranslationX(F)V

    .line 283
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->setTranslationY(F)V

    .line 285
    invoke-virtual {p0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->a:Lcom/millennialmedia/internal/SizableStateManager;

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
