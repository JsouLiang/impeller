// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "impeller/compositor/pipeline.h"

namespace impeller {

Pipeline::Pipeline(id<MTLRenderPipelineState> state,
                   id<MTLDepthStencilState> depth_stencil_state)
    : state_(state), depth_stencil_state_(depth_stencil_state) {
  if (!state_) {
    return;
  }
  type_ = Type::kRender;
  is_valid_ = true;
}

Pipeline::~Pipeline() = default;

bool Pipeline::IsValid() const {
  return is_valid_;
}

}  // namespace impeller
