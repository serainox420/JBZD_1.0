.class Lcom/adcolony/sdk/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0xc

.field static final d:I = 0x10

.field static final e:I = 0xf

.field static final f:I = 0x0

.field static final g:I = 0x1

.field static final h:I = 0x2

.field static final i:I = 0x3

.field static final j:I = 0xff0000

.field static final k:I = 0x0

.field static final l:I = 0x10000

.field static final m:I = 0x20000

.field static final n:I = 0x30000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIII)I
    .locals 2

    .prologue
    .line 36
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0xc

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method
