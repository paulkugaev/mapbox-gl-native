#include <mbgl/style/expression/collator.hpp>

// TODO: This Android collator stub should hook up to
// https://developer.android.com/reference/java/text/Collator
// via JNI

namespace mbgl {
namespace style {
namespace expression {

Collator::Collator(bool , bool , const std::string& )
    {}

Collator::Collator(bool , bool )
    {}

bool Collator::operator==(const Collator& ) const {
    return true;
}

int Collator::compare(const std::string&, const std::string&) const {
    return 0;
}

const std::string& Collator::resolvedLocale() const {
    static std::string placeholder;
    return placeholder;
}
mbgl::Value Collator::serialize() const {
    return mbgl::Value(true);
}


} // namespace expression
} // namespace style
} // namespace mbgl
