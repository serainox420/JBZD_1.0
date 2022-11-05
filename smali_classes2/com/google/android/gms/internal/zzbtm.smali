.class public Lcom/google/android/gms/internal/zzbtm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaIP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final zzcmf:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[B>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtm;->zzaIP:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbtm;->zzcmf:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtm;->mContext:Landroid/content/Context;

    const-string v2, "frc"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbtm;->zzaIP:Ljava/util/List;

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/gms/internal/zzblp;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzblp;-><init>()V

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzbtm;->zzcmf:J

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzblq;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/google/android/gms/internal/zzblp;J)V

    return-void
.end method
