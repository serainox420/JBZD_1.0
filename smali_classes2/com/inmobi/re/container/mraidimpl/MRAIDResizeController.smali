.class public Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;
.super Ljava/lang/Object;
.source "MRAIDResizeController.java"


# static fields
.field protected static final PLACEHOLDER_ID:I = 0x1b5

.field protected static final RELATIVELAYOUT_ID:I = 0x1b6


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

.field public resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    .line 39
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    .line 40
    return-void
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ResizeProperties;)Landroid/widget/FrameLayout;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 148
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 150
    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a()V

    .line 151
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v3, 0x1b3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 158
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v5, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 163
    const/16 v5, 0x1b6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 164
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v7, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v5, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 176
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 177
    return-object v1
.end method

.method private a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    .line 270
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    const-string v2, "top-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    :cond_1
    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    :cond_3
    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    :cond_4
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    :cond_5
    const-string v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    :cond_6
    return-object v1
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 228
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    const/16 v0, 0x1b5

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 230
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 232
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in replaceByPlaceHolder "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 247
    invoke-direct {p0, p2}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$3;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$3;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    new-array v1, v0, [I

    .line 190
    new-array v2, v0, [I

    .line 191
    invoke-virtual {p3}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    aget v0, v1, v7

    aget v3, v2, v7

    sub-int/2addr v0, v3

    aput v0, v1, v7

    .line 194
    aget v0, v1, v6

    aget v2, v2, v6

    sub-int/2addr v0, v2

    aput v0, v1, v6

    .line 196
    aget v0, v1, v6

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    add-int/2addr v0, v2

    aput v0, v1, v6

    .line 197
    aget v0, v1, v7

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    add-int/2addr v0, v2

    aput v0, v1, v7

    .line 199
    iget-boolean v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    if-nez v0, :cond_3

    .line 200
    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    aget v3, v1, v6

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    sub-int/2addr v0, v2

    aput v0, v1, v6

    .line 204
    :cond_0
    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    aget v3, v1, v7

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    sub-int/2addr v0, v2

    aput v0, v1, v7

    .line 207
    :cond_1
    aget v0, v1, v6

    if-gez v0, :cond_2

    .line 208
    aput v6, v1, v6

    .line 209
    :cond_2
    aget v0, v1, v7

    if-gez v0, :cond_3

    .line 210
    aput v6, v1, v7

    .line 212
    :cond_3
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    aget v2, v1, v6

    aget v3, v1, v7

    iget v4, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v5, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;-><init>(IIII)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    .line 216
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v3, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 218
    aget v0, v1, v6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 219
    aget v0, v1, v7

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 220
    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    invoke-virtual {p3}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method static synthetic b(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string v0, "top-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "top-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "top-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-string p1, "top-right"

    .line 302
    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x1b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 314
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->resetLayout()V

    .line 315
    return-void
.end method


# virtual methods
.method public closeResized()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$ViewState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b()V

    .line 133
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->closeResized()V

    .line 134
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v3}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 137
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doResize(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/16 v1, 0x1b3

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V

    .line 54
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2, v0}, Lcom/inmobi/re/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 65
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    .line 66
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$1;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$1;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V

    .line 74
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 81
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/controller/JSController$ResizeProperties;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 84
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v1, v1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iput v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    .line 87
    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 95
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    .line 96
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$2;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$2;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in doresize "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 108
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_6
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public onOrientationChange()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-boolean v0, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->doResize(Landroid/os/Bundle;)V

    .line 326
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    .line 319
    return-void
.end method
