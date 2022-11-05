.class Lcom/google/android/gms/internal/zzbwb$1;
.super Lcom/google/android/gms/internal/zzbwb$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbwb;->zza(Lcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzbwg;ZZ)Lcom/google/android/gms/internal/zzbwb$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final zzcqW:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic zzcqX:Lcom/google/android/gms/internal/zzbuk;

.field final synthetic zzcqY:Ljava/lang/reflect/Field;

.field final synthetic zzcqZ:Lcom/google/android/gms/internal/zzbwg;

.field final synthetic zzcra:Z

.field final synthetic zzcrb:Lcom/google/android/gms/internal/zzbwb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbwb;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzbwg;Z)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcrb:Lcom/google/android/gms/internal/zzbwb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqX:Lcom/google/android/gms/internal/zzbuk;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqY:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqZ:Lcom/google/android/gms/internal/zzbwg;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcra:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzbwb$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcrb:Lcom/google/android/gms/internal/zzbwb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqX:Lcom/google/android/gms/internal/zzbuk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqY:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqZ:Lcom/google/android/gms/internal/zzbwg;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbwb;->zza(Lcom/google/android/gms/internal/zzbwb;Lcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqW:Lcom/google/android/gms/internal/zzbvc;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzbwh;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqW:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcra:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqY:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqY:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbwe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqX:Lcom/google/android/gms/internal/zzbuk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqW:Lcom/google/android/gms/internal/zzbvc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqZ:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbwe;-><init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    return-void
.end method

.method public zzaT(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcrd:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwb$1;->zzcqY:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
