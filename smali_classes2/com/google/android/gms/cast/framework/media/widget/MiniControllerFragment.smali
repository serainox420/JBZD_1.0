.class public Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private zzauA:I

.field private zzauB:I

.field private zzauC:I

.field private zzauH:[I

.field private zzauI:[Landroid/widget/ImageView;

.field private zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private zzauQ:Z

.field private zzauR:I

.field private zzauS:I

.field private zzauT:I

.field private zzauU:I

.field private zzauV:I

.field private zzauW:I

.field private zzauX:I

.field private zzauY:I

.field private zzaut:I

.field private zzauu:I

.field private zzauv:I

.field private zzauw:I

.field private zzaux:I

.field private zzauy:I

.field private zzauz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "MiniControllerFragment"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauI:[Landroid/widget/ImageView;

    return-void
.end method

.method private zza(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/google/android/gms/R$styleable;->CastMiniController:[I

    sget v3, Lcom/google/android/gms/R$attr;->castMiniControllerStyle:I

    sget v4, Lcom/google/android/gms/R$style;->CastMiniController:I

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castShowImageThumbnail:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauQ:Z

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castTitleTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauR:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castSubtitleTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauS:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castBackground:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauT:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castProgressBarColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauU:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castButtonColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzaut:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauu:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castStopButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauv:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauW:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauX:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castStopButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauY:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castSkipPreviousButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauw:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castSkipNextButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzaux:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castRewind30ButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauy:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castForward30ButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauz:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castMuteToggleButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauA:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castClosedCaptionsButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauB:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastMiniController_castControlButtons:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    move v0, v1

    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauQ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    sget v3, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v3, v0, v1

    :cond_3
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauV:I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_6

    aget v4, v0, v1

    sget v5, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauV:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauV:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v4, "Unable to read attribute castControlButtons."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v6, [I

    sget v4, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v4, v3, v1

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v1, v3, v0

    const/4 v0, 0x2

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v1, v3, v0

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private zza(Landroid/widget/RelativeLayout;II)V
    .locals 11

    const-wide/16 v8, 0x7530

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    aget v0, v0, p3

    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_custom:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_play_pause_toggle:I

    if-ne v0, v2, :cond_2

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzaut:I

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauu:I

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauv:I

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauV:I

    if-ne v4, v6, :cond_8

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauW:I

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauX:I

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauY:I

    move v10, v2

    move v2, v3

    move v3, v10

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzcg(I)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToPlayPauseToggle(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_skip_previous:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauw:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$string;->cast_skip_prev:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipPrev(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_skip_next:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzaux:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$string;->cast_skip_next:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipNext(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_4
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_rewind_30_seconds:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauy:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$string;->cast_rewind_30:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToRewind(Landroid/view/View;J)V

    goto/16 :goto_0

    :cond_5
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_forward_30_seconds:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauz:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$string;->cast_forward_30:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToForward(Landroid/view/View;J)V

    goto/16 :goto_0

    :cond_6
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_mute_toggle:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauA:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToMuteToggle(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_7
    sget v2, Lcom/google/android/gms/R$id;->cast_button_type_closed_caption:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauC:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauB:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToClosedCaption(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    move v10, v2

    move v2, v3

    move v3, v10

    goto/16 :goto_1
.end method

.method private zzcg(I)Landroid/widget/ProgressBar;
    .locals 4

    const/16 v3, 0x8

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauU:I

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauU:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getButtonImageViewAt(I)Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauI:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getButtonSlotCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getButtonTypeAt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauH:[I

    aget v0, v0, p1

    return v0
.end method

.method public getUIMediaController()Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    sget v0, Lcom/google/android/gms/R$layout;->cast_mini_controller:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const/16 v1, 0x8

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewVisibilityToMediaSession(Landroid/view/View;I)V

    sget v0, Lcom/google/android/gms/R$id;->container_current:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauT:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauT:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_0
    sget v1, Lcom/google/android/gms/R$id;->icon_view:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/google/android/gms/R$id;->title_view:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauR:I

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauR:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    sget v3, Lcom/google/android/gms/R$id;->subtitle_view:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauS:I

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauS:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    sget v4, Lcom/google/android/gms/R$id;->progressBar:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauU:I

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    iget v7, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauU:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const-string v7, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const-string v5, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindProgressBar(Landroid/widget/ProgressBar;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToLaunchExpandedController(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauQ:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$dimen;->cast_mini_controller_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$dimen;->cast_mini_controller_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    new-instance v5, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    sget v2, Lcom/google/android/gms/R$drawable;->cast_album_art_placeholder:I

    invoke-virtual {v4, v1, v5, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauI:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v1, Lcom/google/android/gms/R$id;->button_0:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauI:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    sget v1, Lcom/google/android/gms/R$id;->button_1:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauI:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    sget v1, Lcom/google/android/gms/R$id;->button_2:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    sget v1, Lcom/google/android/gms/R$id;->button_0:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    sget v1, Lcom/google/android/gms/R$id;->button_1:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    sget v1, Lcom/google/android/gms/R$id;->button_2:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    return-object v6

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
