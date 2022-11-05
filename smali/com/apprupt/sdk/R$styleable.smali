.class public final Lcom/apprupt/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CvAdView:[I

.field public static CvAdView_ad_space_id:I

.field public static CvAdView_animation_type:I

.field public static CvAdView_background_color:I

.field public static CvAdView_categories:I

.field public static CvAdView_clean_on_disappear:I

.field public static CvAdView_keywords:I

.field public static CvAdView_limit:I

.field public static CvAdView_load_immediately:I

.field public static CvAdView_placeholder_size:I

.field public static CvAdView_placeholder_view_visible:I

.field public static CvAdView_preview_size:I

.field public static CvAdView_refresh_interval:I

.field public static CvAdView_visibility_tracking:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apprupt/sdk/R$styleable;->CvAdView:[I

    .line 185
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_ad_space_id:I

    .line 201
    const/4 v0, 0x1

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_animation_type:I

    .line 215
    const/16 v0, 0xb

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_background_color:I

    .line 229
    const/4 v0, 0x2

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_categories:I

    .line 243
    const/4 v0, 0x3

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_clean_on_disappear:I

    .line 257
    const/4 v0, 0x4

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_keywords:I

    .line 273
    const/16 v0, 0xc

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_limit:I

    .line 287
    const/4 v0, 0x5

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_load_immediately:I

    .line 301
    const/4 v0, 0x6

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_placeholder_size:I

    .line 315
    const/4 v0, 0x7

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_placeholder_view_visible:I

    .line 329
    const/16 v0, 0x8

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_preview_size:I

    .line 343
    const/16 v0, 0x9

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_refresh_interval:I

    .line 357
    const/16 v0, 0xa

    sput v0, Lcom/apprupt/sdk/R$styleable;->CvAdView_visibility_tracking:I

    return-void

    .line 164
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
