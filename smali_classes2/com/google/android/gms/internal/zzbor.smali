.class public Lcom/google/android/gms/internal/zzbor;
.super Ljava/lang/Object;


# instance fields
.field private final zzccG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzccH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzccI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbor;->zzccG:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbor;->zzccH:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbor;->zzccI:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zzXW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbor;->zzccG:Ljava/util/List;

    return-object v0
.end method

.method public zzXX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbor;->zzccH:Ljava/util/List;

    return-object v0
.end method

.method public zzXY()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbor;->zzccI:Ljava/lang/Object;

    return-object v0
.end method
