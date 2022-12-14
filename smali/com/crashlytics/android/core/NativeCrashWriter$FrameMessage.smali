.class final Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# instance fields
.field private final address:J

.field private final file:Ljava/lang/String;

.field private final importance:I

.field private final offset:J

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 357
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->address:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    .line 358
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    .line 360
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->offset:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    .line 361
    iget v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    .line 362
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 4

    .prologue
    .line 366
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 367
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    const/4 v1, 0x5

    iget v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 377
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 378
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 379
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 380
    const/4 v0, 0x5

    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 381
    return-void
.end method
