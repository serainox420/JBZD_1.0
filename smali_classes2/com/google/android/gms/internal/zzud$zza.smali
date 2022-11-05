.class public final Lcom/google/android/gms/internal/zzud$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzahP:Lcom/google/android/gms/internal/zztr;

.field private zzahQ:J

.field private zzahR:I

.field private zzahS:Lcom/google/android/gms/internal/zztp;

.field private zzahT:Z

.field private zzahU:I

.field private zzahV:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahQ:J

    iput v2, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahR:I

    iput v2, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahU:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahT:Z

    iput v3, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahV:I

    return-void
.end method


# virtual methods
.method public zzB(J)Lcom/google/android/gms/internal/zzud$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahQ:J

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zztp;)Lcom/google/android/gms/internal/zzud$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahS:Lcom/google/android/gms/internal/zztp;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zzud$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahP:Lcom/google/android/gms/internal/zztr;

    return-object p0
.end method

.method public zzaS(I)Lcom/google/android/gms/internal/zzud$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahR:I

    return-object p0
.end method

.method public zzaT(I)Lcom/google/android/gms/internal/zzud$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahV:I

    return-object p0
.end method

.method public zzab(Z)Lcom/google/android/gms/internal/zzud$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahT:Z

    return-object p0
.end method

.method public zzqI()Lcom/google/android/gms/internal/zzud;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzud;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahP:Lcom/google/android/gms/internal/zztr;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahQ:J

    iget v4, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahR:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahS:Lcom/google/android/gms/internal/zztp;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahT:Z

    iget v8, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahU:I

    iget v9, p0, Lcom/google/android/gms/internal/zzud$zza;->zzahV:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzud;-><init>(Lcom/google/android/gms/internal/zztr;JILjava/lang/String;Lcom/google/android/gms/internal/zztp;ZII)V

    return-object v0
.end method
