.class public final Lcom/madsdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdView:[I

.field public static final AdView_isNativeBrowser:I = 0x4

.field public static final AdView_p:I = 0x3

.field public static final AdView_publication:I = 0x0

.field public static final AdView_srh:I = 0x2

.field public static final AdView_srw:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/madsdk/R$styleable;->AdView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
